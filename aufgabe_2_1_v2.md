
Die Bearbeitung von Aufgabe 2.1 soll abgeleitet aus <a href="https://github.com/waltraud-int/MALIS-20.3-WPM_T9_Sara_Melchior/blob/main/aufgabe_1.md">Aufgabe 1</a> erfolgen.

## Verknüpfung der Plattform mit einem Onlinearchiv in OMEKA

Im Rahmen des MALIS20-Praxisprojektes wird derzeit ein Onlinearchiv mit dem Open Source Content Management System OMEKA.net<sup>[4](#Fußnote4)</sup> erstellt, das unter anderem die digitalisierten Ausgaben von „Aus der Heimat“ umfassen soll. Mittelfristig sollen die Inhalte aus OMEKA über Schnittstellen in die bestehende Onlineplattform „Erdinger Geschichte“ eingebunden werden. Zunächst wird über OMEKA.net eine eigene Seite eingerichtet mit spezifischem Layout im Frontend und Backend. Die Auseinandersetzung mit OMEKA umfasst auch die Entwicklung eines Workflows für die Dateneingabe der Digitalisate sowie die optimale Nutzung der Suchfunktionen und den dahinter liegenden Indexings. Im weiteren Verlauf des Projekts werden Export- und Importfunktionen und dafür vorhandene Schnittstellen und APIs geprüft.

## Verbesserung der Arbeitsabläufe in OMEKA durch Softwareeinsatz

Das Metadatenset in OMEKA soll auch Tags umfassen, die im Rahmen des Projektes standardisiert vergeben werden und aus Ortsbezeichnungen des Landkreises Erding bestehen. Anhand dieser kann später nach den Ereignissen in den Orten recherchiert werden. 
Die OCR-Scans werden auf OMEKA im Bereich der Metadaten abgelegt und sind im Volltext durchsuchbar. Die Originaltexte in Fraktur werden als Anhang in OMEKA abgespeichert. Dieser Beispieltext <sup>[5](#Fußnote5)</sup> auf Seite 7 der Ausgabe 1 von „Aus der Heimat“ zeigt die zahlreichen Ortsbezeichnungen:

<i><b>Niederding</b>, 16. Jan. Dem Heiglbauer Lorenz Maier von <b>Niederding</b> legte der Storch einen gesunden Buben in die Wiege. <b>Schwaig</b>, 18. Jan. Hier starb ganz unerwartet der in weiten Kreisen bekannte Schmiedmeister Johann Stemmer im Alter von 64 Jahren. <b>Oberding</b>, 19. Jan. Was schon längere Zeit zu erwarten war, trat am 19. 1. 40 um Mitternacht ein. Nach langer Krankheit verschied die alte Wirtsmutter Maria Schmid, geb. Mair, von <b>Oberding</b> im Alter von 62 Jahren. Ihr Ehemann ist bekanntlich vor zweieinhalb Jahren einem Herzschlag erlegen. Zahlreiche Trauergäste aus Nah und Fern fanden sich am Grabe ein, um von der allgemein beliebten und geachteten Wirtin Abschied zu nehmen. <b>Franzheim</b>, 26. Jan. Getraut wurden im Standesamt <b>Oberding</b> der Maschinist Matthias Ostermaier von <b>Schwaig</b> und die Bauerstochter Magdalenw Goldbrun -ner von <b>Franzheim</b>. <b>Schwaig</b>, 28. Jan. Am Sonntag, 28. Jan. führte die Laienspielgruppe der KdF-Dienststelle <b>Oberding</b> unter der bewährten Spielleitung des KdF-Wartes Kapfham-mer das Lustspiel „Die Tugendbrille" im Parteiheim in <b>Schwaig</b> auf. Das Spiel war gut vorbereitet und wurde mit größtem Beifall ausgenommen. </i>

 

Die OCR-Scans müssen derzeit manuell nach Begriffen durchsucht werden, damit Tags vergeben werden können. Der Einsatz eines automatisierten Verfahrens über Programmschleifen würde die Effizienz bei der Generierung von Tags erhöhen. Ebenso müssen bisher alle Digitalisate händisch in OMEKA hochgeladen werden. Hinzu kommen die Zeichenfehler, die beim Einsatz des ABBYY FineReaders und der „Übersetzung“ des Frakturtextes in das OCR-Digitalisat entstehen, die bisher auch nur manuell korrigiert werden können. 

## Möglicher softwarebasierter Ablauf für die Erkennung von Ortsbezeichnungen und den Upload in OMEKA

1.	Die Kommunen und Orte bzw. Ortsgruppen im Landkreis Erding wurden als Tags im Vorfeld festgelegt
2.	Diese können im CSV-Format aus OMEKA exportiert werden
3.	Skript aus if-/for-Schleife über die OCR-Dateien laufen lassen
4.	Bedingung: wenn Ortsgruppe <xy> vorkommt, die Begriffe in einer neuen Datei ausgeben lassen 
 
## Lösung
 
1. Export der Tags (Kommunen und Orte im Landkreis Erding) als CSV-Datei aus Omeka.net
2. dazu Clone des Repositories https://github.com/omeka/PythonOmekaApiToCsv in der Shell, Ausführen des hinterlegten Python-Skriptes
3. Über Api-Endpoint http://erdinggeschichte.omeka.net/api die Tags lokal in tags_output.csv speichern
4. in Jupyter Notebook mit Pandas die Listen ansehen und filtern
5. über ein Python-Skript wird der OCR-Scan der Zeitschriftenseite über die zuvor gefilterte Begriffsliste durchsucht
6. gefundene Begriffe werden in eine Datei exportiert
