library(RCurl)
library(plyr)
library(rjson)
## Source www.mortality.org (in code) momo monitoring, json from
## https://www.euromomo.eu/component---src-templates-graphs-and-maps-js-ff573d2c7e588be1cead.js

## mortalilty.org requiers a (free) login 
mortalilitylogin <- 'john.doe@email.com:12345566'
mortalilitylogin <- as.character(read.table("momo.pw")[1,1])

getAgeFraction <- function(ccode, cutoff = 85, download = F, userpwd = mortalilitylogin) {
  
  if (download) {
    bin <- getBinaryURL(paste0("https://www.mortality.org/hmd/zip/by_country/", ccode, ".zip"), userpwd = userpwd)
    con <- file(paste0(ccode, ".zip"), open = "wb")
    writeBin(bin, con)
    close(con)
  }
  filelist <- unzip(paste0(ccode, ".zip"), list = T)
  
  popfileindex <- grepl("Population.txt", ignore.case = T, filelist[, 1])
  unzip(paste0(ccode, ".zip"), file = filelist[popfileindex, 1])
  print(filelist[popfileindex, 1])
  data <- read.table(filelist[popfileindex, 1], skip = 2, header = T)
  data$Age <- as.numeric(data$Age)
  data$Year <- as.numeric(data$Year)
  sumstat <- ddply(subset(data, Year == max(data$Year)), .(Age > cutoff), summarise, count = sum(Total))
  fraction <- sumstat[2, 2]/sum(sumstat[, 2])
  names(fraction) <- max(data$Year)
  return(fraction)
}
## Check
getAgeFraction("CHE")
## Read MoMo-data from prefetched JSON file
momodata <- fromJSON(file = "zscores.json")
## count countries
nocountry <- length(momodata$countries$countries)
## prepare and fil dataframe for country and mean excess mortality (equivalent to sum)
sumexcess <- data.frame(country = rep(NA, nocountry), sumex = rep(NA, nocountry))
for (i in 1:nocountry) {
  sumexcess[i, 1] <- momodata$countries$countries[[i]]$country
  ## this is march 2020 (265) to jan 2021 (311), 3 equals >65; 6 equals >85
  sumexcess[i, 2] <- mean(unlist(momodata$countries$countries[[i]]$groups[[3]]$zscore[(265):311]))
}
## get mapping of abbreviations, mapping mortalility.org to MoMo
mapping <- read.csv("mapping.csv")

# share of elderly population preparation
sharecountries <- unique(mapping$ABBRV)
nosharecountries <- length(sharecountries)

## prepare and fill share of elderly population
sharedf <- data.frame(ABBRV = rep(NA, nosharecountries), shaer = rep(NA, nosharecountries))

for (i in 1:nosharecountries) {
  tryCatch({
    sharedf[i, 1] <- as.character(sharecountries[i])
    sharedf[i, 2] <- getAgeFraction(sharecountries[i], cutoff = 65)
  }, error = function(e) {
    paste("Problem with", sharecountries[i])
  })
}

plotdf <- merge(merge(sharedf, mapping), sumexcess, by.X = "country", by.y = "country")
head(plotdf)
with(plotdf, plot(sumex, shaer, xlim = c(-0.2, 3.5), pch = 19, col = "lightblue", xlab = "Mean Z-Score 2020 (>65)", ylab = "Share Population >65",sub="MoMo Data"))
with(plotdf, text(sumex, shaer, labels = ABBRV, cex = 0.6, pos = 4))

m1 <- lm(shaer ~ sumex, plotdf)
#abline(m1)
