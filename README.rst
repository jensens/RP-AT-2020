Über das Projekt
================

Dieses Projekt befreit das Regierungsprogramm aus seinem PDF-Format und macht es so zugänglicher.

Warum?

Weil PDF kein Datenformat ist.
Es ist auch nicht barrierefrei.
Ausserdem ist es am Smartphone schlecht zu lesen.
Solche wichtigen Dokumente sollten nicht auf Schönheit und Textsatz hin optimiert werden.
Hier ist Zugänglichkeit und Offenheit wichtig.
Das ist für OpenData wichtig.
Ein PDF ist kein OpenData, kein offenes Dokument.
Reiner Text als Quelle und daraus ordentlich generiertes HTML sind hier meiner Meinung nach eine gute Lösung.
Zudem ist der Zugang so technisch niederschwellig.
Es müssen keine komplexen Systeme mit hohen Kosten, wie z.B. CMS dazu verwendet werden.

----------------------------
Technik & manueller Eingriff
----------------------------

Technisch habe ich aus dem PDF den reinen Text extrahiert.
Da PDF kein strukturiertes Dokumentenformat ist (sondern ein Seitenbeschreibungsformat) kann der Text nicht perfekt heraus geholt werden.
Wen die Hintergründe dazu interessieren:
Die 30 Minuten Video `How to Extract Text Contents from PDF <https://www.youtube.com/watch?v=k34wRxaxA_c>`_ (3 Teile) erklären das ganz gut.

Vor dem extrahieren habe ich mit `PDFSAM Basic <https://pdfsam.org/de/>`_ das lange Original-PDF Kapitelweise in kleinere PDFs zerlegt.
Die Dateien habe ich dann einigermassen sinnvoll benannt.
Danach habe ich mit `PDFMiner <https://pypi.org/project/pdfminer/>`_ so gut wie möglich den Text pro Datei extrahiert.

Dann habe ich habe ich `Sphinx <https://www.sphinx-doc.org>`_ verwendet um strukturiertes HTML daraus zu generieren.
Der verwendete Markup ist `RestructurendText <https://www.sphinx-doc.org/en/2.0/usage/restructuredtext/basics.html#>`_ (ähnlich Markdown, aber für komplexere Dokumente besser geeignet).

Da da der extrahierte Text nur recht grob ist, war jetzt die manuelle Überarbeitung dran:

- es mussten Formatierungen eingefügt werden:

  - vor allem Zwischenüberschriften,
  - Absätze,
  - Aufzählungslisten,
  - Umbrüche und Trennzeichen sind oft an falschen Stellen.

Dann hat es leider Text durcheinander gewürfelt:

- Spalten, die im Original-nicht richtig im Fluss definiert wurden, werden leider oft durcheinander gebracht;
- Ist das PDF im Entstehungsprozess überarbeitet worden, stehen diese neuen Wörter oft am Ende des Blocks;
- Teilweise sind auch noch Textfragmente von vor der Überarbeitung drinnen.

----------------
Barrierefreiheit
----------------

Aufgrund der technischen Probleme mit dem PDF, gehe ich davon aus, dass Menschen mit eingeschränkter Sehfähigkeit (welche einen Screenreader oder eine Braillezeile verwenden) ebenso einige Problem haben das PDF korrekt zu lesen.
Vielleicht irre ich mich auch, Rückmeldungen gerne an mich.
Ich habe das jetzt produzierte statische HTML auch noch nicht daraufhin getestest.
Es sollte aber von vornherein besser sein als das PDF.
Das kann sicher noch verbessert werden.
Für Vorschläge und Mithilfe bitte gerne an mich wenden.

---------
Mithelfen
---------

Das ist ein offenes Projekt, jede/r kann mitmachen.

Wer mithelfen mag:
Das `Projekt liegt auf Github <https://github.com/jensens/RP-AT-2020>`_, einer kollaborativen Plattform zur Quellcode-Verwaltung.

Grundsätzlich kann man dort eine/n Benutzer/in anlegen und im `/source/` Ordner auf der zu ändernden Datei auf bearbeiten (edit) klicken.
Es wird eine Kopie im eigenen Ordner (Clone) gespeichert und dann über einen Pull-Request fragt ihr mich an, um die Änderungen zum übernehmen.
Sobald ich den Pull-Request übernommen (merged) habe, werde ich das HTML neu generieren und die Änderungen kommen so online.

Wer GIT kennt, kann sich auch eine lokale Arbeitskopie erstellen.

Bei Fragen dazu könnt ihr mich gerne kontaktieren:
E-Mail `Jens Klein <mailto:jk@kleinundpartner>`_
Twitter: `yenzenz <https://twitter.com/yenzenz>`_

----------
Beteiligte
----------

Jens Klein
    Idee, Initiator, Technik, Überarbeitung

Robert Harm
    Überarbeitung der meisten Kapitel.
    Verbreitung via `Open3 <https://www.open3.at/>`_
