%% --  Entbehrliche Felder
%% --  
delete.field = {isbn}
delete.field = {issn}
delete.field = {fseries}
delete.field = {language}
delete.field = {series}
delete.field = {keywords}
delete.field = {fjournal}
delete.field = {edition}

%% -- BibDesk-Schlüssel wegmachen falls welche existieren
%% --
delete.field = {date-added}
delete.field = {date-modified}
delete.field = {bdsk-url-1}

%% -- Sortierung nach Autor-Jahr-Titel
%% --
sort.format = {%N(author)%s(year)%s(title)}}

%% --  Key-Format: Erster Autor + Jahr
%% -- 
%% -- key.format = {%1n(author):%d(year)}

%% --  Key-Format: Erste zwei Autoren + Jahr
%% --  
key.format = {%2n(author):%d(year)}


