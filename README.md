### AGFA-Templates (Stand: 2022/10/31)

Dies sind die Vorlagen zur Erstellung von Bachelor- und Masterarbeiten in der AGFA. Diese eignen sich auch, um sich intensiver in die Möglichkeiten von LaTeX einzuarbeiten. 

Die aktuelle Version bekommt man, indem man auf `Code`geht (findet man oben grün hinterlegt) und dort sich das `zip`-File herunterlädt.
Dieses kann man entweder direkt auf seinen PC entpacken oder auf Overleaf hochladen (als neues Projekt). Vorher aber alle seine eigenen Dateien sichern!!

#### Aufbau

* Im Stammverzeichnis befinden sich die Datei `AGFA-Master.tex` als die Vorlage für die Erstellung einer eigenen Arbeit.
* `./preamble` findet sich die Dateien für die Formatierung, dem Layout, den mathematischen Definitione etc. 
Dies alles ist in der `AGFA-ReadMe.pdf` Datei im Detail beschrieben. 
* In`./content` findet sich die Dateien für Titelseite, die einzelnen Abschnitte etc.
Diese werden dann entsprechend in die Hauptdatei eingebunden.
* In `./bib` habe ich eine Musterdatei mit Literaturreferenzen eingestellt.
Dies kann man als Beispiel für eine eigen verwenden oder pflegt in diese siene eigenen Referenzen ein.</li>
* In dem `./texmf`-Unterverzeichnis enthält die Include-Dateien und bib-Dateien und ich empfehle diese in das eigen `~/texmf`-Verzeichnis zu kopieren.
Wer noch nie dieses genutzt hat, den bitte ich den entsprechenden Abschnitt im AGFA-ReadMe zu lesen oder nachfragen.

Bitte unbedingt die Datei `AGFA-ReadMe.pdf` lesen und beherzigen, was dort steht. 
Diese findet sich im `./ReadMe` Ordner und dort findet man auch das 'AGFA-Master.pdf' nochmals.

* `AGFA-ReadMe-Print.pdf`: Bitte doppelseitig drucken, falls es wirklich erforderlich ist

* `AGFA-ReadMe-Online.pdf`: Besser dieses online nutzen, da man dann auch noch die Links hat.

Fragen, Wünsche etc. bitte an ulgr@math.uni-tuebingen.de

### Erläuterungen zu Begriffen ...

#### ... in `agfa-font.sty`

* `fontencoding` und `inpuencoding`: Eine Erläuterung hierzu findet man auf \href{https://tex.stackexchange.com/questions/6448/what-is-the-difference-between-font-encoding-and-input-encoding} und \href{https://tug.org/TUGboat/tb39-1/tb121ltnews28.pdf}. Da ich nicht weiß, ob jeder Nutzer der Vorlage schon `utf-8` als Default bei seinem Editor eingestellt hat, wird in der Datei `agfa-font.sty` noch das Paket `selinput` aufgerufen, was eigentlich entbehrlich ist.
* Das Paket `textcomp` ist auch entbehrlich, wenn man ein aktuelles `TeXLive` System hat. Ursprüngliche Sinn des Paketes war es, Zeichen wie `copyright`, `bullet` etc. zur Verfügung zu stellen. Es schadet aber nicht, es stehen zu lassen. 
* Schriften: `lmodern`, `libertinus` oder als Default `Times`



### Änderungen

* 2022/10/10: 
  - Komplette Überarbeitung und Bereinigung einiger kleinere Fehler
  - Eigenständigkeitserklräung dazu
  - Einleitung dazu
  - Etwas Bereinigung des Masterefiles
  - `texmf` Verzeichnis ergäzt. Bitte diese Möglichkeit für eigene Erweiterungen nutzen.
  
* Wesentliche Änderung:
	- Doppelseitig ist jetzt unterstützt via `twoside = true`; siehe Masterfile
	- Bereinigung der gerahmten Umgebungen: Nur noch Theorem, Satz, Lemma und Korollar
	- Englische Variante überprüft
	- Die `sty` Files in `~/texmf/tex/latex/agfa` können mit dem Masterfile genutzt werden. Bitte den Hinweis dort beachten.
	- Agfa-ReadMe.pdf ist für den doppelseitigen Druck formatiert `twoside=true`

* 2022/10/31
  - Fehlerbereinigung bzgl. backref (jetzt konform zu den üblichen Vorgaben)
  - Englische Unterstützung jetzt auch bei BibLaTeX
  - Kleinere Korrekturen
  






