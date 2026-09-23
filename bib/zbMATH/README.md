## AGFA-Templates (Stand: 2025-09-14 - siehe _Änderungen_)

Dies sind die Vorlagen zur Erstellung von Bachelor- und Masterarbeiten in der AGFA. Diese eignen sich auch, um sich intensiver in die Möglichkeiten von LaTeX einzuarbeiten. Die `AGFA-Light`-Variante unterscheidet sich dabei nur durch deren Aufbau: Es wird auf den __Vorspann__ verzichtet und nur das Inhaltsverzeichnis ausgegeben. 

Die aktuelle Version bekommt man, indem man auf `Code`geht (findet man oben grün hinterlegt) und dort sich das `ZIP`-File herunterlädt.
Dieses kann man entweder direkt auf seinen PC entpacken oder auf Overleaf hochladen (als neues Projekt). Vorher aber alle seine eigenen Dateien sichern!

**Wichtige** Bitte die Datei `AGFA-Master.tex` umbenennen. Mein Vorschlag: Wenn der Name lautet `Abcd Efgh` dann in `abef-master.tex` (sollte klar sein, wie es gemeint ist).  Entsprechend auch die eigenen `include` Dateien umbenennen, etwa in `abef-Abschnitt1.tex` etc. Und natürlich den Inhalt der Vorlagen löschen (bzw. als Muster nehmen).

**Wichtig** Bitte **unbedingt** `AGFA-ReadMe.pdf` lesen. Dort finden sich die Details für die Vorlage, da dies auch für die `Light`-Version gültig ist.


### Wichtige Änderung

Es kann jetzt ausgewählt werden, welchen Zitierstil man haben will – `numeric` (Default), `alphabetic` oder `philosophy` (mal ausprobiere, lohnt sich) und ob man `doi URL` haben will  – oder nicht. Wie man es macht, ist in den beiden Masterdateien angegeben. Bitte mit den verschiedenen Möglichkeiten mal _spielen_.

### Aufbau

* Im Stammverzeichnis befinden sich die Dateien `AGFA-Master.tex` und `AGFA-Light.tex`als Vorlagen für die Erstellung einer eigenen Arbeit (`Light` etwa für die Bachelorarbeit oder kleinere Ausarbeitungen). Die kompilierten Versionen befinden sich im Unterverzeichnis `ReadMe`. Man kann daher einfach seinen `TeX`-Installation testen.

* `./ReadMe` enthält weitere Informationen, etwa zum Auffinden von Literatur oder die Nutzung des _Zentralblatts für Mathematik_ (TODO für die Details)

* `./preamble` findet sich die Dateien für die Formatierung, dem Layout, den mathematischen Definition etc. Dies alles ist in der `AGFA-ReadMe.pdf` Datei im Detail beschrieben. 

* In`./content` finden sich die Dateien für Titelseite, die einzelnen Abschnitte etc. Diese werden dann in die Hauptdatei eingebunden. Dabei die Namensgebung beachten.

* In `./bib` habe ich eine Musterdatei mit Literaturreferenzen eingestellt.
Dies kann man als Beispiel für eine eigene Datei verwenden oder seine eigenen Referenzen darin pflegen. Meine Empfehlung: Die Datenbank [zbMath](https://zbmath.org) nutzen und mithilfe dieser einen korrekten `BibTeX`-Eintrag erzeugen und in die eigene `bib`-Datei kopieren. Mit dem Tool [bibtool](https://ctan.org/pkg/bibtool) kann man diese dann geeignet bearbeiten. Siehe hierzu auch die Übersicht `./ReadMe/BibTeX-DB-Uebersicht.pdf`.

* In dem `./texmf`-Unterverzeichnis enthält Include-Dateien und bib-Dateien und ich empfehle diese in ein eigenes `~/texmf`-Verzeichnis zu kopieren. Wer dieses noch nie  genutzt hat, den bitte ich, den entsprechenden Abschnitt im `AGFA-ReadMe zu lesen oder nachzufragen. Nutzt man als Mac-Nutzer das Programm [TeXShop](https://pages.uoregon.edu/koch/texshop/), so ist dieses bereits vorhanden.

Weiteres zur Struktur von `texmf` etc. findet man [in diesem Artikel auf Overleaf](https://www.overleaf.com/learn/latex/Articles/An_introduction_to_Kpathsea_and_how_TeX_engines_search_for_files%23Table_listing_Kpathsea_.E2.80.9Cconfig_variables.E2.80.9D).

* Bitte unbedingt die Datei `AGFA-ReadMe.pdf` lesen und beherzigen, was dort steht. Diese findet sich im `./ReadMe` Ordner. Dort findet man auch das `AGFA-Master.pdf` und das `AGFA-Light.pdf` als Muster. 

#### Wichtig

Bitte eigene Definitionen in eine **separate** Datei eintragen und dann via `\input` einbinden und **nicht** die originalen Dateien ändern. Dies erschwert sonst im Fall der Fälle die Fehlersuche. 

Fragen, Wünsche etc. bitte an ulgr@math.uni-tuebingen.de

### Erläuterungen zu Begriffen 

#### ... in `agfa-font.sty`

* Da ich nicht weiß, ob jeder Nutzer der Vorlage schon `utf-8` als Default bei seinem Editor eingestellt hat, wird in der Datei `agfa-font.sty` noch das Paket `selinput` aufgerufen, was eigentlich entbehrlich ist.

* Das Paket `textcomp` ist auch entbehrlich, wenn man ein aktuelles `TeXLive` System hat. Ursprünglicher Sinn des Paketes war es, Zeichen wie `copyright`, `bullet` etc. zur Verfügung zu stellen. Es schadet aber nicht, es stehenzulassen. 

* Schriften: `lmodern`, `libertinus` oder als Default `Times`

* `LuaLaTeX`: Wer dies nutzen will, bitte Info an mich, damit ich die Vorlage entsprechend abändere (TODO)


### __Overleaf__

Wer [Overleaf](http://overleaf.com) nutzt, bitte alles mithilfe des  `ZIP`-Files als neues Projekt hochladen. Auf Overleaf wird alles entpackt und es steht dann in den korrekten Unterverzeichnissen und kann __out-of-the-box__ genutzt werden.

### Änderungen

* 2025/09/14 - Komplette Überarbeitung der Masterdateien `AGFA-light.tex` und `AGFA-Master.tex`und der Pakete in `./preamble`.

* 2025/09/11 - Kleine Korrekturen im ReadMe und in der Vorlage. Und die Datei `AGFA-ulgr.pdf` mit weiteren Informationen beigefügt. Man sollte da mal reinsehen – auch wenn dies von mir ist.

* 2024/07/04 - `review` eingefügt. Bitte Masterfile ansehen und für das Korrekturlesen auskommentieren. Es reicht, die Datei `agfa-art.sty` herunterzuladen (im Abschnitt `preamble`).

* 2024/06/12 - Aufnahme von `maxcitenames=1` und `maxbibnames=4` damit nicht alle Autoren beim Zitieren erscheinen, aber im Literaturverzeichnis vier davon angezeigt werden.

* 2024/04/14 - Aufnahme von `twoside=true` und `BCOR=12mm`. Dies kann bei Bedarf genutzt werden. Auf jeden Fall **muss** `BCOR` gesetzt werden, bevor das finale Dokument zum Drucken geht (wegen der Bindung). Bei dicken Arbeiten entsprechend anpassen.  

* 2023/08/21 - Änderung in `agfa-theorem.sty`: Die Querverweise auf Gleichungen haben nicht richtig funktioniert. Wie in der Beschreibung des Pakets angegeben, ist folgendes eingefügt bzw. geändert worden: 

	- `\RequirePackage[ntheorem]{empheq}`
	- `\RequirePackage[thmmarks,amsmath]{ntheorem}`	

* 2023/03/14 - Änderung in `agfa-theorem.sty`: Nummerierung der Theoreme, Lemma etc in der Form `Abschnitt.Thm-Nummer`, d.h. etwa `Theorem 2.1` für das erste Theorem im zweiten Abschnitt.  

* 2023/02/02 - Vorlage `AGFA-Light.tex` für kleinere Artikel wie Hausarbeiten etc. 

* 2023/01/30 - Hinweis auf \include vs. \input

* 2023/01/22 - Neugestaltung der Titelseite und Beseitigung von Tippfehlern
	
* 2023/01/04 - Korrekturen und Ergänzung um `AGFA-ReadMe`, in dem sich weitere Details zum Aufbau etc. befinden. Bitte dieses auch lesen!
	
* 2023/01/20 - Bitte für die Eingabe von Mathematik die kurze, aber prägnante Übersicht [AMS: Short Math Guide](https://ctan.org/pkg/short-math-guide) nutzen. Aus meiner Sicht eine der besten Kurzeinführungen in den Formelsatz. 
	
* 2022/11/26 - Korrekturen wegen einer vergessenen Klammer und die Nummerierung von __Anmerkungen__ ist jetzt mit der Nummerierung der __Theoreme__ etc. verknüpft – erleichtert das Auffinden.
	
* 2022/11/23 - Korrektur in `agfa-hyperef.sty` : Dort war nicht berücksichtigt, dass etwa die Abkürzung `thm` in der Theorem-Umgebung nicht definiert ist. Dies habe ich für alle Abkürzungen wie etwa `prop`, `lem`etc. nachgeholt. Wenn man also eigene Theorem-Umgebungen definiert hat, bitte diese dann entsprechend eintragen. 
	
* 2022/11/21 - Korrektur der Reihenfolge der benutzten `sty`-Dateien, da sonst die Möglichkeit, mit `\vref` zu arbeiten, nicht ging. Nun ist `./preamble/agfa-theorem` an der richtigen Stelle in `./preamble/agfa-art.sty`.

* 2022/11/07 - Links bei `agfa-font.sty` Beschreibung korrigiert



<ulgr@math.uni-tuebingen.de>



