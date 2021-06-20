#!/bin/bash
# Updateordner mit Datum YYMMDD, z.B. 210616
# Dateien sollen in den übergeordneten Ordner, damit sie weiterverarbeitet werden können 
# Zielordner data
# Überschreiben der alten Dateien durch die neuen, wenn in data ältere Dateien liegen
# prompt über -i vor Überschreiben
# gibt über -v aus, welche Dateien bewegt wurden

filenames='*096.*'
cd var/alephino50/data/210616

for filename in $filenames
do 
 mv -i -v $filenames ../
done

echo All done
