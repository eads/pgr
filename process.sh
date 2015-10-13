#!/bin/bash

echo "making directories"
mkdir pdf
mkdir tiff
mkdir pages
mkdir text

echo "downloading files"
./download.sh

echo "split files into pages"
./split.sh

echo "ocr the pages"
./ocr.sh

cat pages/*.txt > text/tomo-001-all.txt
