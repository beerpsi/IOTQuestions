#!/bin/bash

IFS=' '
ARRAY=(`find *.png -printf %f' '`)

for i in ${ARRAY[@]}; do
	tesseract -l vie+eng $i tesseract-raw/${i%%.*} --dpi 120
done
