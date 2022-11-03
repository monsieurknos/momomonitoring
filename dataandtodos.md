# Bounds for CH
Data at 
https://www.experimental.bfs.admin.ch/expstat/en/home/innovative-methods/momo.assetdetail.23605335.html
 * [ ] Check associated confidence level
 * [ ] Read through methodolgy at bottom of https://www.experimental.bfs.admin.ch/expstat/en/home/innovative-methods/momo.html (*MoMo approach*)


  
# Empirical Validations
## Against Actuarial Approach
Compute expected mortality at same level (Micha: approach?) with a reasonable actuarial model  (*Actuarial Approach*) and compare against MoMo method 

### Pros and Cons
 * Cons
   * Hard to do on a weekly basis (reporting base of current MoMo-approach)
   * Generally more involved
 * Pros
   * More elaborate, proactively showing an alternative, superior approach


## Against Age Pymarid cross-country
Plot excess mortality bounds against age pyramid for several countries (see [R-Code](mortan.R))

### Pros and Cons
* Pros
  * Easyily done, almost ready 
* Cons
  * Excess-Mortality ist annoying to get (reading graph in JavaScript)


## Against Age Pyramid cross country with actuarial approach
Plot excess mortality bounds against age pyramid for several countries for both approaches (actuarial approach and MoMo approach)
### Pros and Cons
See above, as a combinations of the two.

# ToDos
 * [ ] Go through JSON file again and work out way to automate retrieval of JSON object @Simon




  