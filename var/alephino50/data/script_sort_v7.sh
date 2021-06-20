#!/bin/bash
# Updateordner mit Datum YYMMDD, z.B. 210616
# Dateien sollen in den übergeordneten Ordner, damit sie weiterverarbeitet werden können 
# Zielordner data
# Überschreiben der alten Dateien durch die neuen, wenn in data ältere Dateien liegen
# prompt über -i vor Überschreiben

filenames='*096.*'

find ~/Desktop/shell-lesson/MALIS-20.3-WPM_T9_Sara_Melchior/var/alephino50/data  -type d -name "*21*" -print

for filename in $filenames
do 
 mv -i $filenames ../
done

echo All done
