# BibTeX-Datenbanken für allgemeine Literatur

Eine Übersicht über Alternativen zu zbMATH für die Suche nach allgemeiner Literatur mit BibTeX-Export.

## Akademische Datenbanken

### Google Scholar
- **URL**: [https://scholar.google.com](https://scholar.google.com)
- **Beschreibung**: Sehr umfassend und kostenlos
- **Vorteile**: 
  - Deckt alle Fachbereiche ab
  - BibTeX-Export über "Zitieren" → "BibTeX"
  - Oft die erste Anlaufstelle für interdisziplinäre Suchen

### CrossRef
- **URL**: [https://www.crossref.org](https://www.crossref.org)
- **Beschreibung**: Der Standard für DOI-basierte Literatur
- **Vorteile**:
  - Sehr zuverlässige bibliografische Daten
  - API-Zugang für automatische BibTeX-Generierung
  - Besonders gut für Zeitschriftenartikel

## Fachspezifische Datenbanken

### PubMed (Medizin/Life Sciences)
- **URL**: [https://pubmed.ncbi.nlm.nih.gov](https://pubmed.ncbi.nlm.nih.gov)
- **Beschreibung**: Medizinische und biowissenschaftliche Literatur
- **Vorteile**:
  - BibTeX-Export verfügbar
  - Sehr präzise medizinische Literatur

### IEEE Xplore (Ingenieurswissenschaften/Informatik)
- **URL**: [https://ieeexplore.ieee.org](https://ieeexplore.ieee.org)
- **Beschreibung**: Technische und ingenieurswissenschaftliche Publikationen
- **Vorteile**:
  - Direkter BibTeX-Export
  - Standard für technische Literatur

### JSTOR (Geisteswissenschaften)
- **URL**: [https://www.jstor.org](https://www.jstor.org)
- **Beschreibung**: Geisteswissenschaftliche Zeitschriften und Bücher
- **Vorteile**:
  - BibTeX-Export für Abonnenten
  - Umfangreiche historische Archive

## Bibliothekskataloge

### WorldCat
- **URL**: [https://www.worldcat.org](https://www.worldcat.org)
- **Beschreibung**: Weltweiter Bibliotheksverbund
- **Vorteile**:
  - Bücher, Artikel, Dissertationen
  - BibTeX-Export verfügbar
  - Besonders gut für Monographien

### Deutsche Nationalbibliothek
- **URL**: [https://www.dnb.de](https://www.dnb.de)
- **Katalog**: [https://portal.dnb.de](https://portal.dnb.de)
- **Beschreibung**: Für deutschsprachige Literatur
- **Vorteile**:
  - Vollständige deutsche Publikationen
  - Export in verschiedenen Formaten

## Hilfswerkzeuge

### Zotero
- **URL**: [https://www.zotero.org](https://www.zotero.org)
- **Beschreibung**: Literaturverwaltung mit Browser-Plugin
- **Vorteile**:
  - Automatische BibTeX-Generierung aus verschiedenen Quellen
  - Synchronisiert mit vielen Datenbanken

### BibDesk
- **URL**: [https://bibdesk.sourceforge.io](https://bibdesk.sourceforge.io)
- **Beschreibung**: BibTeX-Editor und Literaturverwaltung für macOS
- **Vorteile**:
  - Native macOS-Anwendung
  - Direkter Import aus vielen Online-Quellen
  - Integrierte PDF-Verwaltung
  - Nahtlose Integration mit LaTeX-Workflows
  - Arbeitet perfekt zusammen mit TeXShop

### TeXShop
- **URL**: [https://pages.uoregon.edu/koch/texshop/](https://pages.uoregon.edu/koch/texshop/)
- **Beschreibung**: LaTeX-Editor für macOS
- **Vorteile**:
  - Integrierte BibTeX-Unterstützung
  - Arbeitet nahtlos mit BibDesk zusammen
  - Bereits erwähnt in der AGFA-Vorlage

### DOI2BibTeX
- **URL**: [https://www.doi2bib.org](https://www.doi2bib.org)
- **Beschreibung**: DOI zu BibTeX Konverter
- **Vorteile**:
  - Einfach DOI eingeben → BibTeX erhalten
  - Sehr praktisch für einzelne Artikel

## Zusätzliche Ressourcen

### arXiv (Preprints)
- **URL**: [https://arxiv.org](https://arxiv.org)
- **Beschreibung**: Preprint-Server für verschiedene Fachbereiche
- **Hinweis**: BibTeX-Export über "Export citation"

### ResearchGate
- **URL**: [https://www.researchgate.net](https://www.researchgate.net)
- **Beschreibung**: Wissenschaftliches Netzwerk
- **Hinweis**: Teilweise BibTeX-Export verfügbar

## Empfehlung

Für die meisten Fälle ist **Google Scholar** der beste Startpunkt, da es sehr umfassend ist und BibTeX-Export bietet. Für spezielle Fachgebiete lohnen sich dann die jeweiligen Fachdatenbanken.

## Tipp für LaTeX-Nutzer

Das Tool **bibtool** (erwähnt in der AGFA-Vorlage) kann verwendet werden, um BibTeX-Einträge aus verschiedenen Quellen zu bereinigen und zu vereinheitlichen:

- **CTAN**: [https://ctan.org/pkg/bibtool](https://ctan.org/pkg/bibtool)

Siehe auch hierzu die `config.rsc` Datei im Verzeichnis `./bib`. Nutzung via

	bibtool -r config.rsc name-alt.bib -o name-neu.bib
	
für die Bereinigung (einfach mal in die `rsc`-Datei) reinsehen.