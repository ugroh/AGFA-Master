### AGFA-Templates (Stand: 2026-09-24)

LaTeX-Vorlagen zur Erstellung von Bachelor- und Masterarbeiten in der AGFA. Diese eignen sich auch, um sich intensiver in die Möglichkeiten von LaTeX einzuarbeiten. Dabei setze ich voraus, dass jeder eine aktuelle und vollständige `TeX`-Installation hat, d.h.  [https://tug.org/texlive/](https://tug.org/texlive/) nutzt (siehe hierzu die Erläuterungen unter `Concise instructions, per platform`).

Wer sich in `LaTeX` einarbeiten will: [LearnLaTeX](https://www.learnlatex.org/de/) hilft dabei.

Bitte den Abschnitt [Korrekturen](#Korrekturen) beachten.

#### Schnellstart

1. **Download:** Klicke auf den grünen `Code`-Button und lade das ZIP-File herunter
2. **Installation:** Entpacke das Archiv lokal oder lade es (ZIP-File) als neues Projekt auf Overleaf hoch
3. **Anpassung:** Benenne  `AGFA-Master.tex` um (z.B. `abef-master.tex` für den Namen "abcd efgh"; etwa Ulrich Groh -> `ulgr-master.tex`). Analog für `AGFA-Light.tex`
4. **Inhalt:** Ersetze  die Beispielinhalte durch eigene Texte

#### Varianten

- **AGFA-Master.tex** - Vollständige Vorlage mit Titelseite, Danksagung, etc. für die Masterarbeit oder mehr. Man braucht kein book-Format und ähnliches dazu.

- **AGFA-Light.tex** - Minimale Variante für kleinere Arbeiten, etwa Bachelorarbeit, Seminarausarbeitungen etc. (nur Inhaltsverzeichnis)

- **seminar/AGFA-Seminar.tex** - Einstieg für absolute Anfänger: eine einzige, vollständig kommentierte Datei ohne `agfa-art` (siehe [Für Anfänger](#für-anfänger-seminaragfa-seminartex))

#### Verzeichnisstruktur

```
├── AGFA-Master.tex        	# Hauptvorlage
├── AGFA-Light.tex         	# Minimale Variante
├── Test-Schriften.tex    	# Test der Schriftoptionen (lucida, japanese)
├── seminar/               	# Einstieg für Anfänger
│   └── AGFA-Seminar.tex  	# eine Datei, alles kommentiert
├── preamble/              	# Paket-Definitionen
│   ├── agfa-art.sty      	# Hauptpaket
│   ├── agfa-font.sty     	# Schriftarten (lmodern, libertinus, times)
│   ├── agfa-layout.sty   	# Layout und Kopf-/Fußzeilen
│   ├── agfa-biblio.sty   	# Bibliographie-Stile
│   ├── agfa-theorem.sty  	# Mathematische Umgebungen
│   ├── agfa-mathtools.sty 	# Mathematische Hilfsmittel
│   ├── agfa-defn.sty     	# Mathematische Definitionen
│   ├── agfa-listen.sty   	# Listen-Umgebungen
│   ├── agfa-babel.sty    	# Deutsch/Englisch
│   ├── agfa-hyperref.sty 	# Querverweise
│   ├── agfa-pakete.sty   	# Allgemeine Pakete (Tabellen, Grafik, Farben)
│   ├── agfa-quellen.sty  	# Bildquellen: \quelle, \druckequellen
│   └── agfa-abkuerz.sty  	# Abkürzungen
├── content/               	# Inhalts-Dateien
│   ├── 0-AGFA-title.tex  	# Titelseite
│   ├── AGFA-Einleitung.tex	# etc
│   └── AGFA-Section-*.tex	# und weitere
├── ReadMe
│	├── AGFA-Master.pdf und AGFA-Light.pdf als Muster und Test
│	├── zbMATH-Nutzung.pdf / BibTeX-DB-Uebersicht.pdf (TODO für mich)
│	└── AGFA-Readme.pdf
├── bib/                   # Literaturverzeichnis
│   └── agfa-bib.bib
└── texmf/                 # texmf-Unterverzeichnis für bib- und sty-Dateien
```

### Für Anfänger: `seminar/AGFA-Seminar.tex`

Wer noch nie mit LaTeX gearbeitet hat, beginnt am besten hier. Die Datei ist in sich abgeschlossen (keine Ordner `preamble/` oder `content/`) und jede Zeile ist kommentiert. Sie zeigt in drei Teilen:

- **Teil 0 – Literaturdatenbank:** zwei Beispieleinträge, aus denen LaTeX beim Übersetzen selbst die Datei `AGFA-Seminar.bib` erzeugt.
- **Teil 1 – Präambel:** jedes Paket einzeln geladen und erklärt (babel, csquotes, amsmath/amsthm, graphicx, biblatex, hyperref) – bewusst ohne `agfa-art`, damit man sieht, was eine Präambel leistet.
- **Teil 2 – Text:** Absätze, Hervorhebung, Anführungszeichen, Striche, Listen, Formeln (`$…$`, `\[…\]`, `equation`, `align*`), Sätze und Beweise, Querverweise, Abbildung, Tabelle, Zitate und Literaturverzeichnis.

Übersetzen mit LuaLaTeX (pdfLaTeX geht auch) und **biber**; beim ersten Mal zwei- bis dreimal übersetzen.

**Wichtig zur Literaturdatenbank:** Die Datei `AGFA-Seminar.bib` wird bei *jedem* Übersetzen aus Teil 0 neu geschrieben. Änderungen direkt in der `.bib`-Datei gehen dabei verloren. Also entweder

1. Einträge nur in Teil 0 der `.tex`-Datei bearbeiten, oder
2. auf eine eigene Datei umsteigen: den Block `\begin{filecontents*} … \end{filecontents*}` löschen, die Einträge in z. B. `abcd-seminar.bib` speichern und in der Präambel `\addbibresource{abcd-seminar.bib}` eintragen.

Wer die Grundlagen beherrscht, wechselt zu `AGFA-Light.tex` – dort erledigt `agfa-art` die Präambel.

### Wichtige Features

#### Zitierstile

Wähle den bevorzugten Bibliographie-Stil in der Hauptdatei:

```latex
\usepackage[%
    , numeric      % Standard: [1], [2], [3]
]{agfa-art}
```
Ich empfehle, nicht das unsinnige `alphabetic` zu nehmen, sondern `numeric` und `\textcite[wo-genau]{label}`. Wer es unbedingt anders haben will – bitte Mail  an mich. 

#### Mathematische Umgebungen
Das Template bietet umfassende mathematische Umgebungen:

**Verfügbare Umgebungen:**
- `theorem`, `thm` - Theoreme
- `lemma`, `lem` - Lemmata  
- `proposition`, `prop` - Sätze/Propositionen
- `corollary`, `cor` - Korollare
- `definition`, `defn` - Definitionen
- `example` - Beispiele
- `examples` - mehrere Beispiele
- `remark`, `rem` - Anmerkung; `remarks` - Anmerkungen
- `conjecture`, `conj` - Vermutungen (nur Deutsch)
- `exercise`, `aufgabe` - Aufgaben (eigene Zählung)
- `summary`, `question` - Zusammenfassung, Frage (ohne Nummer)
- `proof` - Beweise (mit QED-Symbol)

Alle nummerierten Umgebungen teilen sich einen Zähler (z. B. Theorem 2.1, Lemma 2.2). Verweise am besten mit `\cref{…}` bzw. `\vref{…}` – der Name („Lemma“, „Satz“ …) wird dann automatisch gesetzt.

also etwa 

	\begin{theorem}\label{thm:referenz}
	...
	\end{theorem}

#### Spezielle Listen-Umgebungen

```latex
\begin{myenumerate} ... \end{myenumerate}     % (i), (ii), (iii)
\begin{myequivalent} ... \end{myequivalent}   % (a), (b), (c)
\begin{mynumber} ... \end{mynumber}           % (1), (2), (3)
\begin{myitemize} ... \end{myitemize}         % Bullet points

% Inline-Listen im Fließtext
\begin{myinliner} \item ... \end{myinliner}   % (i), (ii) im Text
\begin{myinlinea} \item ... \end{myinlinea}   % (a), (b) im Text

% Spezielle gerahmte Umgebungen
\begin{synopsis} \item Hinweis 1 \item Hinweis 2 \end{synopsis}
\begin{content} \item Inhalt 1 \item Inhalt 2 \end{content}
```

#### Mathematische Hilfsmittel
```latex
% Automatische Klammergrößen (einfach schreiben):
( \frac{1}{1+x^2} )     % passt sich automatisch an
% Achtung: ( ) und [ ] sind im Mathemodus aktiv (\left/\right):
%  - halboffene Intervalle wie ]a,b] nicht direkt tippen -> \lointerval, \rointerval
%  - eine Klammer nicht ueber & oder \\ (align) hinweg oeffnen/schliessen

% Normen und Beträge
\norm{x}         % ||x||
\abs{x}          % |x|
\dualp{x}{y}     % ⟨x,y⟩

% Intervalle
\interval{a,b}   % [a,b]
\ointerval{a,b}  % ]a,b[
\rointerval{a,b} % [a,b[
\lointerval{a,b} % ]a,b]

% Kleine Brüche im Text
\sfrac{1}{2}     % ½
```

#### Abkürzungen
Vordefinierte Abkürzungen mit dem richtigen Leerzeichen:
```latex
\zB    % z. B.    \dh     % d. h.
\ua    % u. a.    \etc    % etc.
\vgl   % vgl.     \bzw    % bzw.
\eg    % e.g.     \ie     % i.e.
```

#### Literaturverwaltung

**Empfohlener Workflow:**
1. Suche in [zbMath](https://zbmath.org) nach deiner Literatur
2. Kopiere den BibTeX-Eintrag in `./bib/agfa-bib.bib` (bitte aber dieser Datei einen eigenen Namen geben). 
3. Nutze [bibtool](https://ctan.org/pkg/bibtool) zur Bearbeitung der Datei. Siehe hierzu auch `zbMATH-Nutzung.pdf`im Unterordner `ReadMe`. Gern helfe ich hier mit.

**DOI-Integration:**
Hat ein Eintrag ein `doi`-Feld, wird sein Titel automatisch zu einem klickbaren DOI-Link (keine Option nötig).

#### Bildquellen

Für Abbildungen aus fremden Quellen die URL mit `\quelle` angeben – innerhalb der `figure`-Umgebung und **nach** `\caption`. Sonderzeichen wie `%`, `_`, `#`, `&` müssen nicht maskiert werden.

```latex
\begin{figure}[htb]
  \centering
  \includegraphics[width=0.6\linewidth]{./content/Bild}
  \caption{Beschriftung (Foto: N.\,N., CC BY-SA 4.0)}
  \label{fig:bild}
  \quelle{https://commons.wikimedia.org/wiki/File:Beispiel.jpg}
\end{figure}
```

Am Ende (nach `\printbibliography`) gibt `\druckequellen` das Verzeichnis „Bildquellen“ mit Abbildungsnummer, Seite und URL aus. Bei CC-Lizenzen gehören Urheber und Lizenz zusätzlich in die Bildunterschrift.

#### Schriftarten

```latex
% Beim Aufruf von agfa-art.sty eine Alternative angeben:
	\usepackage[lmodern]{agfa-art}      % Latin Modern
	\usepackage[libertinus]{agfa-art}   % Libertinus
	\usepackage[lucida]{agfa-art}       % Lucida OpenType (nur LuaLaTeX, kommerziell)
% Ohne Option: Times (Standard) – empfohlen
```

**Lucida:** Die Option `lucida` lädt das Paket `lucida-otf`. Sie setzt die (kostenpflichtigen) Lucida-OpenType-Schriften voraus, die über [TUG](https://tug.org/store/lucida/) bezogen werden können, und funktioniert nur mit LuaLaTeX.

**Japanischer Text:** Mit der Option `japanese` wird `luatexja` geladen; japanische Zeichen können dann direkt im Text stehen (Standardschrift: Harano Aji, in TeX Live enthalten). Nur mit LuaLaTeX. Kombinierbar mit jeder Schriftoption:

```latex
\usepackage[japanese]{agfa-art}           % Times + Japanisch
\usepackage[lucida,japanese]{agfa-art}    % Lucida + Japanisch
```

Eine andere japanische Schrift wählt man (bei `lucida` oder `libertinus`) im Dokument z. B. mit `\setmainjfont{Hiragino Mincho ProN}`. Mit pdfLaTeX werden `lucida` und `japanese` mit einer Warnung ignoriert.

Zum Ausprobieren liegt `Test-Schriften.tex` im Hauptordner.

#### Für Overleaf-Nutzer

Lade das gesamte ZIP-File als neues Projekt hoch. Alle Verzeichnisse werden automatisch korrekt erstellt. Danach sollte man aber alles bereinigen und auch umbenennen!

#### Zweiseitiger Druck

Für die finale Version aktiviere:
```latex
\documentclass[%
    , twoside = true     % Zweiseitiges Layout
    , BCOR = 12mm        % Bindekorrektur (anpassen je nach Dicke)
]{scrartcl}
```

#### Review-Modus

Für das Korrekturlesen aktiviere den doppelten Zeilenabstand:
```latex
\usepackage[review]{agfa-art}
```

#### Wichtige Hinweise

- **Eigene Definitionen** in separate Datei auslagern und per `\input` einbinden. Der Name dieser Datei sollte `abef-defn.tex` sein.

- **texmf-Verzeichnis nutzen:** Für systemweite Verfügbarkeit die Pakete aus `./texmf/` in dein lokales texmf-Verzeichnis kopieren. Details siehe [TUG texmf Guide](https://tug.org/texlive/doc/texlive-en/texlive-en.html#x1-110002.3) und [Overleaf Kpathsea Guide](https://www.overleaf.com/learn/latex/Articles/An_introduction_to_Kpathsea_and_how_TeX_engines_search_for_files) sowie `AGFA-ReadMe.pdf`. 

- **Originaldateien nicht ändern** - erschwert Fehlersuche

- **Biber und nicht BibTeX:** Für die Erstellung des Literaturverzeichnisses im Editor unbedingt `biber` einstellen und nicht `bibtex`.

- Bei Problemen: alle eigenen Änderungen sichern vor Updates

#### Erweiterte Features

##### Selektive Kompilierung
Für große Arbeiten können Abschnitte einzeln bearbeitet werden:

```latex
\includeonly{%
    ./content/AGFA-Section-1,
%   ./content/AGFA-Section-2,    % auskommentiert
}
```

##### Review und Finale Version

```latex
% Für Korrekturen:
\usepackage[review]{agfa-art}

% Für finalen Druck:
\KOMAoptions{BCOR=12mm}  % Bindekorrektur
\hypersetup{hidelinks}   % Links ausblenden
```

##### Erweiterte Listen

```latex
% Spezielle gerahmte Umgebungen
\begin{synopsis}
\item Wichtiger Hinweis 1 \item Wichtiger Hinweis 2
\end{synopsis}

\begin{content}  
\item Inhaltspunkt 1 \item Inhaltspunkt 2
\end{content}
```


##### HINWEIS: Klammern über mehrere Zeilen

Für mehrzeilige Formeln mit Klammern:

- Verwende `\left. ... \right\}` am Ende der ersten Zeile
- Verwende `\left\{ ... \right.` am Anfang der nächsten Zeile
- Nutze `\vphantom{}` für konsistente Klammergrößen

Siehe: [https://tex.stackexchange.com/questions/21290](https://tex.stackexchange.com/questions/21290)

#### Typografische Hinweise

**Mathematische Texte:** Beachte die Regeln in [Voss-Mathmode](https://www.ctan.org/pkg/voss-mathmode).

**Deutsche Texte:** 
- Nutze `\enquote{}` für korrekte Anführungszeichen
- Verwende die vordefinierten Abkürzungen: `\zB`, `\dh`, `\ua`, etc.
- Unterscheide Binde- (`-`) und Gedankenstriche (`--`)

#### Support

**Dokumentation:** Das vollständige `AGFA-ReadMe.pdf` im `./ReadMe` Ordner enthält detaillierte Erklärungen aller Features.

Bei Fragen: Mail an ulgr@math.uni-tuebingen.de

#### Korrekturen

* (2026/09/24) Neu: `seminar/AGFA-Seminar.tex` als kommentierter Einstieg für Anfänger (siehe oben).

* (2026/09/24) Durchsicht aller Pakete in `./preamble` – bitte alle `agfa-*.sty` austauschen:
  - `\d{\mu}` (Differential) funktioniert jetzt; es wurde bisher von `hyperref` überschrieben. `\P`, `\L`, `\d` wirken nur im Mathemodus, im Text bleiben ¶, Ł und der Unterpunkt-Akzent erhalten.
  - Die Eins `\1` (bzw. `\e`) jetzt mit `dsfont` (`\mathds{1}`) statt `bbm` – Vektor- statt Bitmap-Schrift.
  - Literaturverzeichnis: Bücher ohne URL/Abrufdatum; kein doppeltes Leerzeichen mehr vor dem Datum; DOI-Links über `https://doi.org`.
  - Option `thmframed` funktioniert wieder (Stil `mdfstyle` war nicht definiert); Option `english` erreicht jetzt auch `agfa-hyperref`.
  - `libertinus` unter LuaLaTeX: `amsmath`/`amssymb` werden in der richtigen Reihenfolge geladen.
  - Ohne Sprachoption wird Deutsch verwendet; keine Warnung von `todonotes` mehr.
  - Neue Optionen `lucida` (Lucida OpenType) und `japanese` (japanischer Text mit `luatexja`), beide nur mit LuaLaTeX; Testdatei `Test-Schriften.tex`.
  - Neu: `agfa-quellen.sty` mit `\quelle{URL}` (in der `figure`-Umgebung nach `\caption`) und `\druckequellen` für ein Bildquellenverzeichnis.

* (2026/08/31) Anpassung von `agfa-theorem.sty` an `TeXLive 2026`. 

* (2026/02/14) das Paket `mleftright` zugefügt und aktiv gemacht (`\mleftright`), damit die automatische Klammergrößenanpassung korrekt funktioniert im Fall von `$X(O)$`.

* (2026/01/31) Um Ausdrücke der Form A/B besser eingeben zu können (d.h. nicht nur eine Linie) gibt es für den Textmodus den Befehl `\sfrac{E}{F}` und für den Mathematikmodus den Befehl `\mfrac{E}{F}` (wichtig: Im Mathematikmodus) Will man also `\sfrac` auch im Mathematikmodus nutzen, dann via `\text{\sfrac{E}{F}}`.

* (2025/10/16) Da es immer noch Unverbesserliche gibt die den Stil `alphabetic` wollen (= [Gr18]) habe ich es schweren Herzens eingebaut. Einfach 

``` latex
	\usepackage[%
		%	,libertinus			% font libertinus
		%	,lmodern			% font lmodern, das Original von Knuth
		%	,thmframed			% wer Theoreme etc. gerahmt haben will
		%   ,numeric			% bevorzugt [7]
 			,alphabetic			% wer es unbedingt haben will [Gr18]
	]{agfa-art}
```
in der Präambel nutzen. Vorher aber `agfa-art.sty` und `agfa-biblio.sty` austauschen (von `GitHub` herunterladen und in `./preamble` kopieren). Bei einer Neuinstallation ist dieses nicht erforderlich (auch bei den folgenden Änderungen).

* (2025/10/15) An `TeXlive2025` angepasst (`\vref` etc.). Korrektur der automatischen Änderung der Klammergrößen. 

* (2025/10/10) Bitte `agfa-theorem.sty` austauschen, da dieses komplett auf Basis `AMSTeX` neu gemacht wurde. Die ursprüngliche Lösung mit `ntheorem` funktioniert ab `TeXlive 2025` nicht mehr mit `cleveref` und `varioref`.

* (2025/09/23) Bitte `agfa-defn.sty` austauschen (kleine Korrektur bei der Zuordnung \epsilon und \phi)

