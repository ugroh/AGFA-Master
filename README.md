# AGFA-Templates (Stand: 2024-04-24)

Dies sind die Vorlagen zur Erstellung von Bachelor- und Masterarbeiten in der AGFA. Diese eignen sich auch, um sich intensiver in die Möglichkeiten von LaTeX einzuarbeiten. Die `AGFA-Light`-Variante unterscheidet sich dabei nur durch deren Aufbau: Es wird auf den __Vorspann__ verzichtet und nur das Inhaltsverzeichnis ausgegeben. 

Die aktuelle Version bekommt man, indem man auf `Code`geht (findet man oben grün hinterlegt) und dort sich das `ZIP`-File herunterlädt.
Dieses kann man entweder direkt auf seinen PC entpacken oder auf Overleaf hochladen (als neues Projekt). Vorher aber alle seine eigenen Dateien sichern!

**Wichtige** Bitte die Datei `AGFA-Master.tex` umbenennen. Mein Vorschlag: Wenn der Name lautet `ABcd EFgh` dann in `abef-master.tex` (sollte klar sein, wie es gemeint ist).  Entsprechend auch die eigenen `include` Dateien umbenennen, etwa in `abef-Abschnitt1.tex` etc. Und natürlich den Inhalt der Vorlagen löschen (bzw. als Muster nehmen).

**Wichtig** Bitte auch `AGFA-ReadMe.pdf` lesen. Dort finden sich die Details für die Vorlage. Dies ist auch für die `Light`-Version gültig. 

## Aufbau

* Im Stammverzeichnis befinden sich die Datei `AGFA-Master.tex` als die Vorlage für die Erstellung einer eigenen Arbeit.
* `./preamble` findet sich die Dateien für die Formatierung, dem Layout, den mathematischen Definition etc. 
Dies alles ist in der `AGFA-ReadMe.pdf` Datei im Detail beschrieben. 
* In`./content` findet sich die Dateien für Titelseite, die einzelnen Abschnitte etc.
Diese werden dann entsprechend in die Hauptdatei eingebunden.
* In `./bib` habe ich eine Musterdatei mit Literaturreferenzen eingestellt.
Dies kann man als Beispiel für eine eigene Datei  verwenden oder pflegt in diese seine eigenen Referenzen ein.</li>
* In dem `./texmf`-Unterverzeichnis enthält die Include-Dateien und bib-Dateien und ich empfehle diese in das eigen `~/texmf`-Verzeichnis zu kopieren.
Wer noch nie dieses genutzt hat, den bitte ich den entsprechenden Abschnitt im AGFA-ReadMe zu lesen oder nachfragen. 

	Weiteres zur Struktur von `texmf` etc. findet man [in diesem Artikel auf Overleaf](https://www.overleaf.com/learn/latex/Articles/An_introduction_to_Kpathsea_and_how_TeX_engines_search_for_files%23Table_listing_Kpathsea_.E2.80.9Cconfig_variables.E2.80.9D).

* Bitte unbedingt die Datei `AGFA-ReadMe.pdf` lesen und beherzigen, was dort steht. Diese findet sich im `./ReadMe` Ordner und dort findet man auch das 'AGFA-Master.pdf' nochmals.

* `AGFA-ReadMe-Print.pdf`: Bitte doppelseitig drucken, falls es wirklich erforderlich ist.

* `AGFA-ReadMe-Online.pdf`: Besser dieses online nutzen, da man dann auch noch die Links hat.

## Wichtig

Bitte eigene Definitionen in eine **separate** Datei eintragen und dann via `\input` einbinden und **nicht** die originalen Dateien ändern. Dies erschwert sonst im Fall der Fälle die Fehlersuche. 

Fragen, Wünsche etc. bitte an ulgr@math.uni-tuebingen.de

## Erläuterungen zu Begriffen 

#### ... in `agfa-font.sty`

* `fontencoding` und `inpuencoding`: Eine Erläuterung hierzu [findet man hier]( https://tex.stackexchange.com/questions/6448/what-is-the-difference-between-font-encoding-and-input-encoding) und [hier für weitere Details](https://tug.org/TUGboat/tb39-1/tb121ltnews28.pdf). 

* Da ich nicht weiß, ob jeder Nutzer der Vorlage schon `utf-8` als Default bei seinem Editor eingestellt hat, wird in der Datei `agfa-font.sty` noch das Paket `selinput` aufgerufen, was eigentlich entbehrlich ist.
	
* Das Paket `textcomp` ist auch entbehrlich, wenn man ein aktuelles `TeXLive` System hat. Ursprünglicher Sinn des Paketes war es, Zeichen wie `copyright`, `bullet` etc. zur Verfügung zu stellen. Es schadet aber nicht, es stehenzulassen. 

* Schriften: `lmodern`, `libertinus` oder als Default `Times`


## __Overleaf__

Wer [Overleaf](http://overleaf.com) nutzt, bitte alles mithilfe des  `ZIP`-Files als neues Projekt hochladen. Auf Overleaf wird alles entpackt und es steht dann in den korrekten Unterverzeichnissen und kann __out-of-the-box__ genutzt werden.

## Änderungen

* 2024/04/14 - Aufnahme von `twoside=true` und `BCOR=12mm`. Dies kann bei Bedarf genutzt werden. Auf jeden Fall **muss** `BCOR` gesetzt werden, bevor das finale Dokument zum Drucken geht (wegen der Bindung). Bei dicken Arbeiten entsprechend anpassen.  

* 2023/08/21 - Änderung in `agfa-theorem.sty`: Die Querverweise auf Gleichungen habe nicht richtig funktioniert. Wie in der Beschreibung des Pakets angegeben folgendes eingefügt bzw. geändert: 

	- `\RequirePackage[ntheorem]{empheq}`
	- `\RequirePackage[thmmarks,amsmath]{ntheorem}`	
 	
* 2023/03/14 - Änderung in `agfa-theorem.sty`: Nummerierung der Theoreme, Lemma etc in der Form `Abschnitt.Thm-Nummer`, d.h. etwa `Theorem 2.1` für das erste Theorem im zweiten Abschnitt. Bitte einfach des `sty-`File ersetzen. 

* 2023/02/02 - Vorlage `AGFA-Light.tex` für kleinere Artikel wie Hausarbeiten etc. 
 
* 2023/01/30 - Hinweis auf \include vs. \input

* 2023/01/22 - Neugestaltung der Titelseite und Beseitigung von Tippfehlern
	
* 2023/01/04 - Korrekturen und Ergänzung um `AGFA-ReadMe`, in dem sich weitere Details zum Aufbau etc. befinden. Bitte dieses auch lesen!
		
* 2023/01/20 - Bitte für die Eingabe von Mathematik die kurze, aber prägnante Übersicht [AMS: Short Math Guide](https://ctan.org/pkg/short-math-guide) nutzen. Aus meiner Sicht eine der besten Kurzeinführungen in den Formelsatz. 
	
* 2022/11/26 - Korrekturen wegen einer vergessenen Klammer und die Nummerierung von __Anmerkungen__ ist jetzt mit der Nummerierung der __Theoreme__ etc. verknüpft – erleichtert das Auffinden.
	
* 2022/11/23 - Korrektur in `agfa-hyperef.sty` : Dort war nicht berücksichtigt, dass etwa die Abkürzung `thm` in der Theorem-Umgebung nicht definiert ist. Dies habe ich für alle Abkürzungen wie etwa `prop`, `lem`etc. nachgeholt. Wenn man also eigene Theorem-Umgebungen definiert hat, bitte diese dann entsprechend eintragen. 
	
* 2022/11/21 - Korrektur der Reihenfolge der benutzten `sty`-Dateien, da sonst die Möglichkeit, mit `\vref` zu arbeiten nicht ging. Nun ist `./preamble/agfa-theorem` an der richtigen Stelle in `./preamble/agfa-art.sty`.

* 2022/11/07 - Links bei `agfa-font.sty` Beschreibung korrigiert



<ulgr@math.uni-tuebingen.de>


  






