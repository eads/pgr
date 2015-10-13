#!/bin/bash

for f in tiff/*
  do
    output_file="text/`basename $f`.txt"
    output_path="text/`basename $f`"
    if [ ! -e "$output_file" ]; then
        echo "Processing $f"
        tesseract -l spa $f $output_path
    else
        echo "Skipping $f"
    fi
  done
