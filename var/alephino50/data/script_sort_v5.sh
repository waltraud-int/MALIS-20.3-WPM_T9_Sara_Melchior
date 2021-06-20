#!/bin/bash

filenames='*096.*'
cd 210616

for filename in $filenames
do 
 mv $filenames ../
 cat /$filenames > ../096.*
done

echo All done
