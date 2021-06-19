

## Automatisierung des Batch-Updates in einem lokalen Bibliothekssystem mit der Unix-Shell

In Aufgabe 2.2 soll mithilfe der Unix-Shell und einem Shell-Skript das Batch-Update zwischen dem Verbundkatalog K10+ 
und dem lokalen Bibliothekssystem Alephino automatisiert werden.

Bei dem wöchentlich vorgenommenen Batch-Update werden Aktualisierungen aus der Verbunddatenbank in das lokale System händisch eingespielt. Als File-Manager wird dabei WinSCP genutzt.
Hier wird ein lokaler Ordner als Zwischenablage genutzt, um die aktualisierten Dateien auszutauschen. Der wöchentlich zur Verfügung stehende Ordner mit dem aktuellsten Tagesdatum enthält 
Plaintext-Dateien, die transferiert werden müssen.

Abbildung 1: ![Ordnerumgebung in WinSCP](https://github.com/waltraud-int/MALIS-20.3-WPM_T9_Sara_Melchior/issues/6)

Abbildung 2: ![Zielordner für Updatedateien](https://github.com/waltraud-int/MALIS-20.3-WPM_T9_Sara_Melchior/issues/7)

Das Update erfolgt über das händische Copy und Paste der Dateien. Dieser Schritt kann jedoch automatisiert werden. 
Bei der Bearbeitung der Aufgabe 2.2 muss die Ordnerstruktur auf meinem privaten Rechner reproduziert werden, da ich bisher mit der Unix-Shell auf Mac gearbeitet habe und in meinem beruflichen Alltag mit Windows arbeite.
So lässt sich aber ausprobieren, ob die Automatisierung möglich ist. Falls die Möglichkeit besteht, das im beruflichen Alltag umzusetzen, würde dann eine Übertragung in die Bibliotheks-IT erfolgen.

Die Umgebung wird über die in den vergangenen Präsenzphasen gelernten Befehle in der Unix-Shell nachgebaut, sodass es die Ordner, Unterordner und Dateimengen gibt, wie sie auch im Originalsystem vorkommen.

Das Shell-Skript umfasst diese Schritte:

1. Aufsuchen des Ordners ../var/alephino/alephino50/data, in dem sich die wöchentlichen aktuellen Dateien befinden
2. Die Ordner sind aufsteigend nach Datum sortiert und nutzen dazu die Benennung YYMMDD, es wird immer der aktuellste angesteuert, in diesem Fall ../var/alephino/alephino50/data/210606
3. Kopie der Dateien
4. Ablage im Ordner ../MALIS-20.3-WPM_T9_Sara_Melchior/batch_update
5. Navigation in das Zielverzeichnis ../var/alephino/alephino50/data, aus dem heraus dann die Datei weiterverarbeitet werden kann
6. Überschreiben der bisher dort vorhandenen mit den aktuellen Dateien 
