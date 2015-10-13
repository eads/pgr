#!/bin/bash

output_file="pages/`basename $1`.txt"
output_path="pages/`basename $1`"
if [ ! -e "$output_file" ]; then
    echo "Processing $1"
    tesseract -l spa $1 $output_path
else
    echo "Skipping $1"
fi
