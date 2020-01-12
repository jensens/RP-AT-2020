Über das Projekt
================

Dieses Projekt befreit das österreichische Regierungsprogramm 2020-2024 aus seinem PDF-Format und macht es so zugänglicher.

Warum?

Weil PDF kein Datenformat ist.
Es ist auch nicht barrierefrei.
Außerdem ist es am Smartphone schlecht zu lesen.
Solche wichtigen Dokumente sollten nicht auf Schönheit und Textsatz hin optimiert werden.
Hier ist Zugänglichkeit und Offenheit wichtig.
Das ist für `OpenData <https://www.data.gv.at/e-learning-module-zu-open-data/>`_ wichtig.
Ein PDF ist kein OpenData, kein offenes Dokument.

Reiner Text als Quelle und daraus ordentlich generiertes HTML sind hier meiner Meinung nach eine gute Lösung.
Durch semantisches Markup wird der Text maschinenlesbar.
Zudem ist der Zugang so technisch niederschwellig.
Es müssen keine komplexen Systeme mit hohen Kosten, wie z.B. CMS dazu verwendet werden.

----------------------------
Technik & manueller Eingriff
----------------------------

Technisch habe ich aus dem PDF den reinen Text extrahiert.
Da PDF kein strukturiertes Dokumentenformat ist (sondern ein Seitenbeschreibungsformat), kann der Text nicht perfekt heraus geholt werden.
Wenn sich jemand für den Hintergrund dazu interessiert:
Die 30 Minuten Video `How to Extract Text Contents from PDF <https://www.youtube.com/watch?v=k34wRxaxA_c>`_ (3 Teile, Englisch) erklären das ganz gut.

Vor dem Extrahieren habe ich mit `PDFSAM Basic <https://pdfsam.org/de/>`_ das lange Original-PDF Kapitelweise in kleinere PDFs zerlegt.
Die Dateien habe ich dann einigermaßen sinnvoll benannt.
Danach habe ich mit `PDFMiner <https://pypi.org/project/pdfminer/>`_ so gut wie möglich den Text pro Datei extrahiert.

Dann habe ich `Sphinx <https://www.sphinx-doc.org>`_ eingesetzt, um aus dem reinen Text strukturiertes HTML zu generieren.
Der verwendete Markup ist `RestructuredText <https://www.sphinx-doc.org/en/2.0/usage/restructuredtext/basics.html#>`_ (aba ReST).
ReST ist ähnlich dem bekannterem Markdown, aber für komplexere Dokumente besser geeignet.

Durch das semantische Format ReST wird der Text maschinenlesbar, was auch ein Anspruch bei OpenData ist.

Da da der extrahierte Text teilweise ziemlich chaotisch ist, war jetzt die manuelle Überarbeitung dran:

- es mussten Formatierungen eingefügt werden:

  - vor allem Zwischenüberschriften,
  - Absätze,
  - Aufzählungslisten,
  - Umbrüche und Trennzeichen sind oft an falschen Stellen.

- Es hat leider auch Text/Absätze/Spalten durcheinander gewürfelt:

- Spalten, die im Original-nicht richtig im Fluss definiert wurden, werden leider oft durcheinander gebracht;
- Ist das PDF im Entstehungsprozess überarbeitet worden, stehen diese neuen Wörter oft am Ende des Blocks;
- Teilweise sind auch noch Textfragmente von vor der Überarbeitung drinnen.

----------------
Barrierefreiheit
----------------

Aufgrund der technischen Probleme mit dem PDF gehe ich davon aus, dass Menschen mit eingeschränkter Sehfähigkeit (welche einen Screenreader oder eine Braillezeile verwenden) ebenso einige Probleme haben das PDF korrekt zu lesen.
Vielleicht irre ich mich auch, Rückmeldungen gerne an mich.

Ich habe das jetzt produzierte statische HTML mit `WAVE/WebAIM <https://wave.webaim.org/>`_ getestet.
Bis auf ein kleines Kontrastproblem im Menu ist es demnach barrierefrei.
Das kann möglicherweise noch verbessert werden.
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
Dann kann man auch Sphinx installieren und lokal den HTML-Generator laufen lassen.
Bloß bitte das generierte HTML nicht im Pullrequest inkludieren, sonst kann es zu Konflikten im Git kommen.

Bei Fragen dazu könnt ihr mich gerne kontaktieren:
- E-Mail `Jens Klein <mailto:jk@kleinundpartner>`_
- Twitter: `yenzenz <https://twitter.com/yenzenz>`_
- GitHub: erstellt einen `Issue auf github.com/jensens/RP-AT-2020/issues <https://github.com/jensens/RP-AT-2020/issues>`_.

----------
Beteiligte
----------

Jens Klein
    Idee, Initiator, Technik, Überarbeitung. `Klein & Partner KG <http://kleinundpartner.at>`_

Robert Harm
    Überarbeitung der meisten Kapitel und Publikation auf `open3.at <https://www.open3.at/>`_

----------
Disclaimer
----------

Die Erstellung des barrierefreien und maschinenlesbaren Regierungsprogramms erfolgte nach bestem Wissen und Gewissen.
Durch die vielen manuellen Übertragungsschritte kann es passiert sein, dass sich eventuell Fehler (zb in der Anordnung von Unterpunkten) eingeschlichen haben, für die wir keine Gewähr übernehmen. Wenn derartiges auffällt, bitte einen `Issue auf github.com/jensens/RP-AT-2020/issues <https://github.com/jensens/RP-AT-2020/issues>`_ erstellen und wir werden dies umgehend korrigieren.
