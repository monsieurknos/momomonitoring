# Markdown Cheat Sheet

Grundlagen von Markdown in Markdown.

Die Elemente unten sind Standard-Markdown. Es gibt verschieden Spielweisen ("flavors") von Markdown, inkl. $\LaTeX$ etc.

# Titel Niveau 1

## Titel Niveau 2

### Titel NIveau 3

## Schriftschnitte ("font faces")

### Fett

**fetter Text**

### Kursiv

*kurisver Text*

### Strikethrough

~~Das ist nicht mehr richtig~~

### Blockquote

> blockquote



## Listen

### Geordnete Liste

1. Element
2. Element
3. Element

### Ungeordnete Liste

- Numero uno
- Nummer 2
- Terzo!

## Code

### Einzelne Snippet

`einzele code bits`

### Eingerückter Code Block

Mit Syntax-Highlight

```python
{
 for i in range(3):
    print(i**2)
}
```

oder in Javascript

```javascript
{
    for (i = 0; i < 3; i++) {
        alert(i**2)
    }
}
```


## Weitere Gestaltungselemente

### Horizontale Linie

---

### Tabellen

| Syntax | Beschreibung |
| ------ | ------------ |
| Text   | Text         |
| Text   | Text         |

### Link

[Webseite der KSBG	](https://www.ksbg.ch/)

[Interner Link zum Abschnit **horizontale Linie**  ](###Horizontale-Linie)

### Bilder

![Alternativ Text: KSBG-Logo](https://www.ksbg.ch/fileadmin/_processed_/f/2/csm_KSBG_blau_3186b193a3.png)

### Fussnoten

Abschnitt mit Fussnote [^kuerzel]Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

[^kuerzel]: Erklärung kann irgendwo sein.

### Aufgabenliste

- [x] Markdown Dokument erklären
- [ ] Nearest Neighbors besprechen
- [ ] Evaluation planen


### Emoji

Bei den meisten Markdown Implementationen können Emojis reinkopiert werden  :grin:
