### AGFA-Templates (Stand: 2025-09-14)

LaTeX-Vorlagen zur Erstellung von Bachelor- und Masterarbeiten in der AGFA. Diese eignen sich auch, um sich intensiver in die Möglichkeiten von LaTeX einzuarbeiten. Dabei setzte ich voraus, dass jeder eine aktuelle und vollständige `TeX`-Installation hat, d.h.  [https://tug.org/texlive/](https://tug.org/texlive/) nutzt (siehe hierzu die Erläuterungen unter `Concise instructions, per platform`).

#### Schnellstart

1. **Download:** Klicke auf den grünen `Code`-Button und lade das ZIP-File herunter
2. **Installation:** Entpacke das Archiv lokal oder lade es (ZIP-File) als neues Projekt auf Overleaf hoch
3. **Anpassung:** Benenne  `AGFA-Master.tex` um (z.B. `abef-master.tex` für den Namen "Abcd Efgh")
4. **Inhalt:** Ersetze  die Beispielinhalte durch eigene Texte

#### Varianten

- **AGFA-Master.tex** - Vollständige Vorlage mit Titelseite, Danksagung, etc. für die Masterarbeit oder mehr. Man braucht kein book-Format und ähnliches dazu.

- **AGFA-Light.tex** - Minimale Variante für kleinere Arbeiten, etwa Bachelorarbeit, Seminarausarbeitungen etc. (nur Inhaltsverzeichnis)

#### Verzeichnisstruktur

```
├── AGFA-Master.tex        	# Hauptvorlage
├── AGFA-Light.tex         	# Minimale Variante
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
│   └── agfa-abkuerz.sty  	# Abkürzungen
├── content/               	# Inhalts-Dateien
│   ├── 0-AGFA-title.tex  	# Titelseite
│   ├── AGFA-Einleitung.tex	# etc
│   └── AGFA-Section-*.tex
├── ReadMe
│	├── AGFA-Master.pdf, AGFA-Light.pdf
│	├── zbMATH-Nutzung.pdf / BibTeX-DB-Uebersicht.pdf (TODO für mich)
│	└── AGFA-Readme.pdf
├── bib/                   # Literaturverzeichnis
│   └── agfa-bib.bib
└── texmf/                 # texmf-Unterverzeichnis für bib- und sty-Dateien
```

### Wichtige Features

#### Zitierstile

Wähle den bevorzugten Bibliographie-Stil in der Hauptdatei:

```latex
\usepackage[%
    , numeric      % Standard: [1], [2], [3]
%   , alphabetic   % [GR80], [Knu84]  
%   , philosophy   % Spezieller Stil für Philosophie
%   , urldoi       % DOI-Links in Titeln
]{./preamble/agfa-art}
```
Ich empfehle, nicht das Unsinnige `alphabetic` zu nehmen, sondern `numeric` und `textcite[]{}`.

#### Mathematische Umgebungen
Das Template bietet umfassende mathematische Umgebungen:

**Mit/ohne Rahmen:**
```latex
\usepackage[thmframed]{./preamble/agfa-art}  % Für gerahmte Theoreme
```

**Verfügbare Umgebungen:**
- `theorem`, `thm` - Theoreme
- `lemma`, `lem` - Lemmata  
- `proposition`, `prop` - Sätze/Propositionen
- `corollary`, `cor` - Korollare
- `definition`, `defn` - Definitionen
- `example` - Beispiele
- `remark`, `rem` - Anmerkungen
- `proof` - Beweise (mit QED-Symbol)

#### Spezielle Listen-Umgebungen
```latex
\begin{myenumerate}    % (i), (ii), (iii)
\begin{myequivalent}   % (a), (b), (c)  
\begin{mynumber}       % (1), (2), (3)
\begin{myitemize}      % Bullet points
\end{myenumerate}

% Inline-Listen im Fließtext
\begin{myinliner} \item ... \end{myinliner}

% Spezielle gerahmte Umgebungen
\begin{synopsis} \item Hinweis 1 \item Hinweis 2 \end{synopsis}
\begin{content} \item Inhalt 1 \item Inhalt 2 \end{content}
```

#### Mathematische Hilfsmittel
```latex
% Automatische Klammergrößen (einfach ( ) verwenden)
% Normen und Beträge
\norm{x}         % ||x||
\abs{x}          % |x|
\dualp{x}{y}     % ⟨x,y⟩

% Intervalle
\interval{a,b}   % [a,b]
\ointerval{a,b}  % ]a,b[

% Kleine Brüche im Text
\sfrac{1}{2}     % ½
```

#### Abkürzungen
Vordefinierte Abkürzungen mit intelligentem Leerzeichen:
```latex
\zB    % z. B.    \dh     % d. h.
\ua    % u. a.    \etc    % etc.
\vgl   % vgl.     \bzw    % bzw.
\eg    % e.g.     \ie     % i.e.
```

#### Literaturverwaltung

**Empfohlener Workflow:**
1. Suche in [zbMath](https://zbmath.org) nach deiner Literatur
2. Kopiere den BibTeX-Eintrag in `./bib/agfa-bib.bib` (bitte aber diese Datei umbenennen)
3. Nutze [bibtool](https://ctan.org/pkg/bibtool) zur Bearbeitung der Datei. Siehe hierzu auch `zbMATH-Nutzung.pdf`im Unterordner `ReadMe`. Gern helfe ich hier mit.

**DOI-Integration:**
Mit der `urldoi`-Option werden Titel automatisch zu klickbaren DOI-Links.

#### Schriftarten

```latex
% In agfa-art.sty:
\usepackage[lmodern]{./preamble/agfa-art}      % Latin Modern
\usepackage[libertinus]{./preamble/agfa-art}   % Libertinus
% Ohne Option: Times New Roman (Standard)
```

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
\usepackage[review]{./preamble/agfa-art}
```

#### Wichtige Hinweise

- **Eigene Definitionen** in separate Datei auslagern und per `\input` einbinden. Der Namen dieses solle `abef-defn.tex` sein.

- **texmf-Verzeichnis nutzen:** Für systemweite Verfügbarkeit die Pakete aus `./texmf/` in dein lokales texmf-Verzeichnis kopieren. Details siehe [TUG texmf Guide](https://tug.org/texlive/doc/texlive-en/texlive-en.html#x1-110002.3) und [Overleaf Kpathsea Guide](https://www.overleaf.com/learn/latex/Articles/An_introduction_to_Kpathsea_and_how_TeX_engines_search_for_files) sowie `AGFA-ReadMe.pdf`. 

- **Originaldateien nicht ändern** - erschwert Fehlersuche

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
\usepackage[review]{./preamble/agfa-art}

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

##### Mathematische Tools
```latex
% Automatische Klammergrößen (einfach schreiben):
( \frac{1}{1+x^2} )     % passt sich automatisch an

% Spezielle Funktionen:
\norm{x}                % ||x||
\abs{x}                 % |x|  
\dualp{x}{y}           % ⟨x,y⟩
\interval{a,b}         % [a,b]
\interior{A}           % °A (topologisches Inneres)
```

#### Literaturverwaltung mit zbMath

**Empfohlener Workflow:**
1. Suche deine Referenz auf [zbMath](https://zbmath.org)
2. Kopiere den BibTeX-Eintrag
3. Füge ihn in `./bib/agfa-bib.bib` ein
4. Nutze `\textcite{}` oder `\cite{}` zum Zitieren

**DOI-Integration:** Mit der `urldoi`-Option werden Titel automatisch zu klickbaren Links.

#### Typografische Hinweise

**Mathematische Texte:** Beachte die Regeln in [Voss-Mathmode](https://www.ctan.org/pkg/voss-mathmode).

**Deutsche Texte:** 
- Nutze `\enquote{}` für korrekte Anführungszeichen
- Verwende die vordefinierten Abkürzungen: `\zB`, `\dh`, `\ua`, etc.
- Unterscheide Binde- (`-`) und Gedankenstriche (`--`)

#### Support

**Dokumentation:** Das vollständige `AGFA-ReadMe.pdf` im `./ReadMe` Ordner enthält detaillierte Erklärungen aller Features.

Bei Fragen: Mail an ulgr@math.uni-tuebingen.de

#