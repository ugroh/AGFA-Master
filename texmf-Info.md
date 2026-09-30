# texmf-Info

Installation der AGFA-Pakete im texmf-Baum

## Worum geht es?

Die Vorlagen benötigen die Pakete `agfa-*.sty` aus dem Ordner `preamble/`. Liegen sie dort, muss jede `.tex`-Datei direkt neben diesem Ordner liegen. Für den Einstieg ist das bequem, bei mehreren Dokumenten aber unpraktisch.

Die Alternative ist der **persönliche texmf-Ordner**. Jede TeX-Installation durchsucht ihn automatisch nach Paketen. Was dort liegt, steht **allen** Dokumenten zur Verfügung, unabhängig von deren Speicherort. Außerdem bleibt der Ordner bei einem Update auf eine neue TeX-Live-Version erhalten.

Das Gleiche gilt für die Literaturdatei `agfa-bib.bib`: Im texmf-Ordner findet biber sie von jedem Dokument aus.

Das Repo enthält dafür bereits einen fertigen Ordner `texmf/` mit der richtigen Struktur:

```
AGFA-Master/texmf/
├── tex/
│   └── latex/
│       └── agfa/
│           ├── agfa-art.sty
│           ├── agfa-babel.sty
│           └── …
└── bibtex/
    └── bib/
        └── agfa-bib.bib
```

Sein Inhalt wird einfach in den eigenen texmf-Ordner kopiert.

## Schritt 1: Den eigenen texmf-Ordner ermitteln

Im Terminal (unter Windows: „Eingabeaufforderung“ oder „PowerShell“) folgenden Befehl eingeben:

```
kpsewhich -var-value TEXMFHOME
```

Die Ausgabe ist der Pfad zum texmf-Ordner. Üblich sind:

| System             | texmf-Ordner            |
| ------------------ | ----------------------- |
| macOS (MacTeX)     | `~/Library/texmf`       |
| Linux (TeX Live)   | `~/texmf`               |
| Windows (TeX Live) | `C:\Users\<Name>\texmf` |

`~` steht für den eigenen Benutzerordner, z. B. `/Users/anna` oder `/home/anna`. Anfangs existiert der Ordner meist noch nicht; er wird im nächsten Schritt angelegt.

## Schritt 2: texmf anlegen und den Inhalt kopieren

**macOS:**

```bash
mkdir -p ~/Library/texmf
cp -R ~/Downloads/AGFA-Master/texmf/. ~/Library/texmf/
```

**Linux:**

```bash
mkdir -p ~/texmf
cp -R ~/AGFA-Master/texmf/. ~/texmf/
```

Der Pfad zum Repo (`~/Downloads/AGFA-Master` bzw. `~/AGFA-Master`) ist an den tatsächlichen Speicherort anzupassen. Der Punkt in `texmf/.` sorgt dafür, dass der *Inhalt* kopiert wird. Ein bereits vorhandener texmf-Ordner wird dabei ergänzt, nicht ersetzt; eigene Dateien darin bleiben erhalten, auch eigene `.bib`-Dateien in `bibtex/bib`.

**Windows:** Im Explorer den Ordner `texmf` aus dem Repo nach `C:\Users\<Name>` kopieren. Gibt es dort schon einen Ordner `texmf`, führt Windows beide zusammen; die Rückfrage zum Ersetzen gleichnamiger Dateien mit „Ja“ beantworten.

Empfehlenswert ist, im Explorer unter **Ansicht → Dateinamenerweiterungen** die Anzeige der Endungen einzuschalten. Sonst bleibt leicht unbemerkt, dass eine Datei versehentlich `agfa-art.sty.txt` heißt.

**Hinweis für macOS:** Der Ordner `Library` ist im Finder ausgeblendet. Über **Gehe zu → Gehe zu Ordner …** (⇧⌘G) und die Eingabe `~/Library` ist er dennoch erreichbar. Wer [TeXShop](https://pages.uoregon.edu/koch/texshop/) bzw. [MacTeX](https://tug.org/mactex/) nutzt, hat unter Umständen schon einen Ordner `~/Library/texmf`; das stört nicht, der Kopierbefehl ergänzt ihn nur.

## Schritt 3: Prüfen, ob TeX die Pakete findet

```
kpsewhich agfa-art.sty
kpsewhich agfa-bib.bib
```

Erscheint jeweils ein Pfad im texmf-Ordner, ist alles korrekt. Erscheint nichts, liegt die Datei an der falschen Stelle; meist ist eine Ebene zu viel entstanden (`texmf/texmf/tex/…`), weil der Ordner selbst statt seines Inhalts kopiert wurde.

Unter TeX Live ist danach nichts weiter nötig, also weder `texhash` noch ein Neustart.

## Schritt 4: Die Vorlage anpassen

Damit die `.tex`-Datei Pakete und Literatur aus dem texmf-Baum lädt, muss in den `\usepackage`-Zeilen und bei `\addbibresource` der Pfad entfernt werden:

```latex
\usepackage{./preamble/agfa-art}       % vorher
\usepackage{agfa-art}                  % nachher

\addbibresource{./bib/agfa-bib.bib}    % vorher
\addbibresource{agfa-bib.bib}          % nachher
```

In `AGFA-AMS.tex` werden die `agfa-*`-Pakete einzeln geladen; dort ist bei jeder dieser Zeilen `./preamble/` zu entfernen.

Die Ordner `preamble/` und `bib/` neben dem Dokument werden danach nicht mehr gebraucht und können gelöscht werden. Bleiben sie liegen, stört das nicht: Die Pakete laden alle Teilpakete immer vom selben Ort wie `agfa-art` selbst, alte und neue Versionen mischen sich also nicht. Übersichtlicher ist es trotzdem ohne.

## Updates

Bei einer Aktualisierung der Vorlagen wird Schritt 2 einfach wiederholt; die alten Paketdateien werden dabei überschrieben. Dateien, die es in der neuen Version nicht mehr gibt, bleiben allerdings liegen. Sauberer ist es daher, den alten Paketordner vorher zu entfernen (macOS; unter Linux `~/texmf` statt `~/Library/texmf`):

```bash
rm -rf ~/Library/texmf/tex/latex/agfa
cp -R ~/Downloads/AGFA-Master/texmf/. ~/Library/texmf/
```

Unter Windows den Ordner `C:\Users\<Name>\texmf\tex\latex\agfa` vor dem Kopieren löschen.

Unter macOS/Linux geht es für Fortgeschrittene auch ohne Kopieren: Statt einer Kopie wird ein Link auf das Repo angelegt. Dann ist nach jedem `git pull` automatisch alles aktuell:

```bash
mkdir -p ~/Library/texmf/tex/latex ~/Library/texmf/bibtex/bib
ln -s ~/GitHub/AGFA-Master/texmf/tex/latex/agfa ~/Library/texmf/tex/latex/agfa
ln -s ~/GitHub/AGFA-Master/texmf/bibtex/bib/agfa-bib.bib ~/Library/texmf/bibtex/bib/agfa-bib.bib
```

Für die Pakete wird der ganze Ordner `agfa` verlinkt, für die Literatur nur die einzelne Datei, weil in `bibtex/bib` oft schon eigene `.bib`-Dateien liegen. Unter Linux beginnen die Ziele mit `~/texmf` statt `~/Library/texmf`. Vorher müssen eventuell vorhandene Kopien (`…/tex/latex/agfa`, `…/bibtex/bib/agfa-bib.bib`) entfernt werden.

## Overleaf

Overleaf bietet keinen texmf-Ordner. Dort bleibt es bei der Variante mit `preamble/` und `bib/` im Projekt.
