### AGFA-Templates (Stand: 2023/01/22)

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

	Weiteres zur Struktur von `texmf` etc. findet man [in diesem Artikel auf Overleaf](https://www.overleaf.com/learn/latex/Articles/An_introduction_to_Kpathsea_and_how_TeX_engines_search_for_files%23Table_listing_Kpathsea_.E2.80.9Cconfig_variables.E2.80.9D).

* Bitte unbedingt die Datei `AGFA-ReadMe.pdf` lesen und beherzigen, was dort steht. Diese findet sich im `./ReadMe` Ordner und dort findet man auch das 'AGFA-Master.pdf' nochmals.

* `AGFA-ReadMe-Print.pdf`: Bitte doppelseitig drucken, falls es wirklich erforderlich ist.

* `AGFA-ReadMe-Online.pdf`: Besser dieses online nutzen, da man dann auch noch die Links hat.

#### Wichtig

Bitte eigene Definitionen in eine **separate** Datei eintragen und dann via `\input` einbinden und **nicht** die originalen Dateien ändern. Dies erschwert sonst im Fall der Fälle die Fehlersuche. 

Fragen, Wünsche etc. bitte an ulgr@math.uni-tuebingen.de

### Erläuterungen zu Begriffen ...

#### ... in `agfa-font.sty`

* `fontencoding` und `inpuencoding`: Eine Erläuterung hierzu [findet man hier]( https://tex.stackexchange.com/questions/6448/what-is-the-difference-between-font-encoding-and-input-encoding) und [hier für weitere Details](https://tug.org/TUGboat/tb39-1/tb121ltnews28.pdf). 

* Da ich nicht weiß, ob jeder Nutzer der Vorlage schon `utf-8` als Default bei seinem Editor eingestellt hat, wird in der Datei `agfa-font.sty` noch das Paket `selinput` aufgerufen, was eigentlich entbehrlich ist.
	
* Das Paket `textcomp` ist auch entbehrlich, wenn man ein aktuelles `TeXLive` System hat. Ursprüngliche Sinn des Paketes war es, Zeichen wie `copyright`, `bullet` etc. zur Verfügung zu stellen. Es schadet aber nicht, es stehen zu lassen. 

* Schriften: `lmodern`, `libertinus` oder als Default `Times`


### __Overleaf__

Wer [Overleaf](http://overleaf.com) nutzt bitte alles mit Hilfe des  `zip`-Files als neues Projekt hochladen. Auf Overleaf wird alles entpackt und es steht dann in den korrekten Unterverzeichnissen und kann __out-of-the-box__ genutzt werden.

### Änderungen

* 2022/10/10: 
	- Komplette Überarbeitung und Bereinigung einiger kleinere Fehler
  	- Eigenständigkeitserklräung dazu
  	- Einleitung dazu
  	- Etwas Bereinigung des Masterefiles
  	- `texmf` Verzeichnis ergänzt. Bitte diese Möglichkeit für eigene Erweiterungen nutzen.
  
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
  
* 2022/11/07
	- Links bei `agfa-font.sty` Beschreibung korrigiert

* 2022/11/21
	- Korrektur der Reihenfolge der benutzten `sty`-Dateien, da sonst die Möglichkeit mit `\vref` zu arbeiten nicht ging. Nun ist `./preamble/agfa-theorem` an der richtigen Stelle in `./preamble/agfa-art.sty`.
	
* 2022/11/23
	- Korrektur in `agfa-hyperef.sty` : Dort war nicht berücksichtigt, dass etwa die Abkürzung `thm` in der Theorem-Umgebung nicht definiert ist. Dies habe ich für alle Abkürzungen wie etwa `prop`, `lem`etc. nachgeholt. Wenn man also eigene Theorem-Umgebungen definiert hat, bitte diese dann entsprechend eintragen. 
	
* 2022/11/26
	- Korrekturen wegen einer vergessenen }-Klammer
	- Die Nummerierung von __Anmerkungen__ ist jetzt mit der Nummerierung der __Theoreme__ etc. verknüpft. Dies macht das Auffinden einfacher.
	
* 2023/01/04
	- Korrekturen und Ergänzung um `AGFA-ReadMe`, in dem sich weitere Details zum Aufbau etc. befinden. Bitte dieses auch lesen!
	
* 2023/01/20 
	- Bitte für die Eingabe von Mathematik die kurze, aber prägnante Übersicht [AMS: Short Math Guide](https://ctan.org/pkg/short-math-guide) nutzen. Aus meiner Sicht eine der besten Kurzeinführungen in den Formelsatz. 
	
* 2023/01/22
	- Neugestaltung der Titelseite
	- Beseitigung von Tippfehlern
	
* 2023/01/30
	- Hinweis auf \include vs. \input
	


  






