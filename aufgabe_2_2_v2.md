

## Automatisierung des Batch-Updates in einem lokalen Bibliothekssystem mit der Unix-Shell

In Aufgabe 2.2 soll mithilfe der Unix-Shell und einem Shell-Skript das Batch-Update zwischen dem Verbundkatalog K10+ 
und dem lokalen Bibliothekssystem Alephino automatisiert werden.

Bei dem wöchentlich vorgenommenen Batch-Update werden Aktualisierungen aus der Verbunddatenbank in das lokale System händisch eingespielt. Als File-Manager wird dabei WinSCP genutzt.
Hier wird ein lokaler Ordner als Zwischenablage genutzt, um die aktualisierten Dateien auszutauschen. Der wöchentlich zur Verfügung stehende Ordner mit dem aktuellsten Tagesdatum enthält 
Plaintext-Dateien, die transferiert werden müssen.
Die Abbildungen zeigen die Oberfläche in WinSCP:

Abbildung 1: ![Ordnerumgebung in WinSCP](https://github.com/waltraud-int/MALIS-20.3-WPM_T9_Sara_Melchior/issues/6)

Abbildung 2: ![Zielordner für Updatedateien](https://github.com/waltraud-int/MALIS-20.3-WPM_T9_Sara_Melchior/issues/7)

Das Update erfolgt über das händische Copy und Paste der Dateien. Dieser Schritt kann jedoch automatisiert werden. 

Für die Lösung der Aufgabe habe ich die Ordnerstruktur reproduziert: 
- Über die Navigation in der Shell habe ich Ordner, Unterordner und Dateimengen nachgebildet, wie sie auch im Originalsystem vorkommen.
- unter Aufgabe_2_2/ liegt das Shell-Skript, das die Update-Dateien, die in einem bestimmten Format vorliegen, aus dem Ausgangsordner in den Zielordner verschiebt
- Ausgangsordner in Aufgabe_2_2/var/alephino50/data/ mit dem Datumsschema YYMMDD
- Zielordner ist data/

Das Shell-Skript <b>script_sort.sh</b> macht diese Schritte:

1. Navigation in das Directory mit dem aktuellsten Datum  
2. Überschreiben der alten Dateien durch die neuen, wenn in data ältere Dateien liegen
3. prompt über -i vor Überschreiben - fordert Reaktion über yes oder no
4. gibt über -v aus, welche Dateien überschrieben wurden
5. wenn alle Dateien überschrieben wurden, erfolgt die Ausgabe "All done"

In einer Erweiterung des Skriptes habe ich versucht, auch die Auswahl des Ausgangsordners zu automatisieren, sodass das Skript direkt den Ordner mit dem aktuellsten Datum identifiziert. Das ist mir nicht zufriedenstellend gelungen. Etwas umständlichere alternative Lösung: über das Skript <b>script_latest_folder.sh</b> kann ich mir jedoch den aktuellsten Ordner selbst anzeigen lassen und dann das Skript script_sort.sh auslösen.

Ebenso habe ich versucht, in <b>script_sort.sh</b> einen break einzufügen, der das Skript beendet, auch wenn beim Überschreibevorgang nicht alle Dateien mit yes bestätigt wurden. Derzeit läuft das Skript solange durch, bis man alle Dateien mit yes bestätigt hat. In Version script_sort_v8.sh habe ich den letzten Versuch notiert. Das Skript läuft durch, gibt dann aber eine Fehlermeldung bei der Codezeile, die den break hervorrufen soll. 
