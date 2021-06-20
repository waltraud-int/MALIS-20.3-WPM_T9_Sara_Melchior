#!/bin/bash

filenames='*096.*'

for filename in $filenames
do
  mv $filenames ../
done

echo All done
