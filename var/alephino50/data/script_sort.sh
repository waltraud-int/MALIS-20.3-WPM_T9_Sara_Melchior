#!/bin/bash

# Skript zur Dateiensortierung
# Updatedateien aus dem Ordner mit dem höchsten Datum sollen in /data verschoben werden
# ältere noch dort befindliche Dateien sollen dabei ersetzt werden



filenames='*096.*'

for filename in $filenames
do 
  mv $filenames ../
done

echo All done
