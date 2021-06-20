#!/bin/bash

filenames='*096.*'

for filename in $filenames
do
  mv 210616/$filenames data/$filenames
done

echo All done
