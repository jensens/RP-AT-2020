.. PDF befreites östereichisches Regierungs-Programm 2020-2014 documentation master file, created by
   sphinx-quickstart on Fri Jan 10 11:44:20 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

========================================================================
Inoffizielles PDF befreites östereichisches Regierungsprogramm 2020-2014
========================================================================

.. toctree::
   :maxdepth: 3
   :caption: Inhalt:

   00-01-Praeambel
   01-00-Staat-Gesellschaft-Transparenz
   02-00-Wirtschaft-Finanzen
   03-00-Klimaschutz-Infrastruktur-Umwelt-Landwirtschaft
   04-00-Europa-Integration-Migration-Sicherheit
   05-00-Soziale-Sicherheit-neue-Gerechtigkeit-Armutsbekaempfung
   06-00-Bildung


Über das Projekt
================

Dieses Projekt befreit das Regierungsprogramm aus seinem PDF format und macht es so zugänglicher.

Technisch habe ich aus dem PDF den reinen Text extrahiert.
Da PDF kein strukturiertes Dokumentenformat ist (sondern ein Seitenbeschreibungsformat) kann der Text nicht perfekt heraus geholt werden.
Dazu habe ich mit `PDFSAM Basic <https://pdfsam.org/de/>`_ das lange Original-PDF Kapitelweise in kleinere PDFs zerlegt.
Die Dateien habe ich dann einigermassen sinnvoll benannt.
Danach habe ich mit `PDFMiner <https://pypi.org/project/pdfminer/>`_ so gut wie möglich den Text pro Datei extrahiert.

Ich habe hier `Sphinx <https://www.sphinx-doc.org>`_ verwendet und strukturiertes HTML daraus zu generieren.
Der verwendete Markup ist `RestructurendText` (ähnlich Markdown, aber für komplexere Dokumente besser geeignet).

Grob fehlt jetzt noch die manuelle Überarbeitung um die Formatierungen einzufügen:
vor allem Zwischenüberschriften, Absätze und Aufzählungslisten.
Dann hat es leider Text durcheinander gewürfelt.
Das geschieht, wenn das PDF im Entstehungsprozess überarbeitet worden ist.
Teilweise sind auch noch Textfragmente von vor der Überarbeitung drinnen.

Wer mithelfen mag:
Das `Projekt liegt auf Github <https://github.com/jensens/RP-AT-2020>`_, einer kollaborativen Plattform Quellcode-Verwaltung.


Indices and tables
==================

* :ref:`genindex`
* :ref:`search`
