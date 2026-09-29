# texmf-Info

Installation der AGFA-Pakete im texmf-Baum

## Worum geht es?

Die Vorlagen benötigen die Pakete `agfa-*.sty` aus dem Ordner `preamble/`. Liegen sie dort, muss jede `.tex`-Datei direkt neben diesem Ordner liegen. Für den Einstieg ist das bequem, bei mehreren Dokumenten aber unpraktisch.

Die Alternative ist der **persönliche texmf-Ordner**. Jede TeX-Installation durchsucht ihn automatisch nach Paketen. Was dort liegt, steht **allen** Dokumenten zur Verfügung, unabhängig von deren Speicherort. Außerdem bleibt der Ordner bei einem Update auf eine neue TeX-Live-Version erhalten.

## Schritt 1: Den texmf-Ordner ermitteln

Im Terminal (unter Windows: „Eingabeaufforderung“ oder „PowerShell“) folgenden Befehl eingeben:

```
kpsewhich -var-value TEXMFHOME
```

Die Ausgabe ist der Pfad zum texmf-Ordner. Üblich sind:

| System | texmf-Ordner |
|---|---|
| macOS (MacTeX) | `~/Library/texmf` |
| Linux (TeX Live) | `~/texmf` |
| Windows (TeX Live) | `C:\Users\<Name>\texmf` |

`~` steht für den eigenen Benutzerordner, z. B. `/Users/anna` oder `/home/anna`. Anfangs existiert der Ordner meist noch nicht; das ist normal, er wird im nächsten Schritt angelegt.

## Schritt 2: Die Ordnerstruktur anlegen

Im texmf-Ordner wird genau diese Struktur benötigt, wobei die Namen `tex` und `latex` exakt so lauten müssen:

```
texmf/
└── tex/
    └── latex/
        └── agfa/
            ├── agfa-art.sty
            ├── agfa-babel.sty
            └── … (alle .sty aus preamble/)
```

Am einfachsten wird der gesamte Ordner `preamble/` nach `texmf/tex/latex/` kopiert und in `agfa` umbenannt.

**macOS:** Der Ordner `Library` ist im Finder ausgeblendet. Über **Gehe zu → Gehe zu Ordner …** (⇧⌘G) und die Eingabe `~/Library` ist er dennoch erreichbar. Im Terminal geht alles in einem Schritt:

```bash
mkdir -p ~/Library/texmf/tex/latex
cp -R ~/Downloads/AGFA-Master/preamble ~/Library/texmf/tex/latex/agfa
```

Der Pfad `~/Downloads/AGFA-Master` ist an den tatsächlichen Speicherort des Repos anzupassen.

**Linux:**

```bash
mkdir -p ~/texmf/tex/latex
cp -R ~/AGFA-Master/preamble ~/texmf/tex/latex/agfa
```

**Windows:** Im Explorer `C:\Users\<Name>` öffnen und dort die Ordner `texmf\tex\latex` anlegen. Anschließend den Ordner `preamble` hineinkopieren und in `agfa` umbenennen.

Empfehlenswert ist, im Explorer unter **Ansicht → Dateinamenerweiterungen** die Anzeige der Endungen einzuschalten. Sonst bleibt leicht unbemerkt, dass eine Datei versehentlich `agfa-art.sty.txt` heißt.

## Schritt 3: Prüfen, ob TeX die Pakete findet

```
kpsewhich agfa-art.sty
```

Erscheint ein Pfad im texmf-Ordner, ist alles korrekt. Erscheint nichts, liegt die Datei an der falschen Stelle; meist fehlt eine Ebene (`tex/latex`) oder es ist eine zu viel.

Unter TeX Live ist danach nichts weiter nötig, also weder `texhash` noch ein Neustart.

## Schritt 4: Die Vorlage anpassen

Damit die `.tex`-Datei die Pakete aus dem texmf-Baum lädt, muss in den `\usepackage`-Zeilen der Pfad entfernt werden:

```latex
\usepackage{./preamble/agfa-art}   % vorher
\usepackage{agfa-art}              % nachher
```

Anschließend wird der Ordner `preamble/` neben dem Dokument **gelöscht**. Wichtig: Entweder texmf **oder** `preamble/`, nie beides gleichzeitig. Andernfalls mischt LaTeX unter Umständen alte und neue Paketversionen.

## Updates

Bei einer Aktualisierung der Vorlagen wird der neue `preamble/`-Ordner erneut nach `texmf/tex/latex/agfa` kopiert, wobei der alte überschrieben wird.

Unter macOS/Linux geht es für Fortgeschrittene auch ohne Kopieren: Statt einer Kopie wird ein Link auf das Repo angelegt. Dann ist nach jedem `git pull` automatisch alles aktuell:

```bash
ln -s ~/GitHub/AGFA-Master/preamble ~/Library/texmf/tex/latex/agfa
```

Unter Linux lautet das Ziel `~/texmf/tex/latex/agfa`.

## Overleaf

Overleaf bietet keinen texmf-Ordner. Dort bleibt es bei der Variante mit `preamble/` im Projekt.
