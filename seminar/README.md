### AGFA-Seminar – LaTeX für Einsteiger

`AGFA-Seminar.tex` ist ein vollständiges, kommentiertes Beispieldokument für Seminar- und Hausarbeiten. Alles steckt in **einer** Datei – ideal, um LaTeX kennenzulernen.

#### So geht's

1. `AGFA-Seminar.tex` in [Overleaf](https://www.overleaf.com) hochladen oder in TeXworks/TeXShop öffnen.
2. Übersetzen mit **LuaLaTeX** (pdfLaTeX geht auch).
3. Für das Literaturverzeichnis im Editor **biber** einstellen (nicht bibtex). In Overleaf geschieht das automatisch.
4. Beim ersten Mal zwei- bis dreimal übersetzen, damit Inhaltsverzeichnis, Verweise und Literatur stimmen.
5. Datei umbenennen (z. B. `abcd-seminar.tex`) und die Beispieltexte durch eigene ersetzen.

#### Was zeigt die Datei?

- **Teil 0 – Literaturdatenbank:** zwei Beispieleinträge im Format BibTeX
- **Teil 1 – Präambel:** welche Pakete man braucht und wofür
- **Teil 2 – Text:** Absätze, Hervorhebungen, Anführungszeichen, Striche, Listen, Formeln, Sätze und Beweise, Querverweise, Bilder, Tabellen, Zitate

Alle Erklärungen stehen als Kommentare (`%`) direkt im Quelltext – einfach mitlesen.

#### Die wichtigsten Regeln

- Neuer Absatz = **Leerzeile**, nicht `\\`
- Formeln im Text: `$...$`, abgesetzt: `\[...\]` – niemals `$$...$$`
- Anführungszeichen: `\enquote{...}`
- Verweise: erst `\caption`, dann `\label`; verweisen mit `Satz~\ref{...}`
- Jeden Satz in eine eigene Zeile schreiben – erleichtert die Fehlersuche

#### Achtung: Literaturdatenbank

Die Datei `AGFA-Seminar.bib` wird bei **jedem** Übersetzen aus Teil 0 neu geschrieben. Änderungen direkt in der `.bib`-Datei gehen verloren. Also entweder

- Einträge nur in Teil 0 der `.tex`-Datei bearbeiten, oder
- auf eine eigene Datei umsteigen: den Block `\begin{filecontents*} … \end{filecontents*}` löschen, die Einträge in `abcd-seminar.bib` speichern und `\addbibresource{abcd-seminar.bib}` eintragen.

Literatureinträge findet man z. B. bei [zbMATH](https://zbmath.org) (Export „BibTeX“).

#### Wie geht es weiter?

- Zum Nachlesen: [LearnLaTeX](https://www.learnlatex.org/de/) und die [LaTeX2e-Kurzbeschreibung](https://ctan.org/pkg/lshort-german)
- Für Bachelor- und Masterarbeiten: `AGFA-Light.tex` bzw. `AGFA-Master.tex` im Hauptordner – dort übernimmt `agfa-art` die Präambel.

Bei Fragen: Mail an ulgr@math.uni-tuebingen.de
