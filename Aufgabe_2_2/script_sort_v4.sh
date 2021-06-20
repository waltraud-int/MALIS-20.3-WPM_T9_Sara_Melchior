#!/bin/bash

filenames='*096.*'
cd 210616

for filename in $filenames
do 
 mv $filenames ../
done

echo All done
