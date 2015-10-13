#!/bin/bash

for f in tiff/*
  do
    echo "Processing $f"
    output_file=text/`basename $f`
    if [ ! -e "$output_file" ]; then
        tesseract -l spa $f $output_file
    fi
  done
