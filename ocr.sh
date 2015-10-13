#!/bin/bash

for f in tiff/*
  do
    echo "Processing $f"
    tesseract -l spa $f text/`basename $f`
  done
