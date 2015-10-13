#!/bin/bash

echo "making directories"
mkdir pdf
mkdir text
mkdir tiff

echo "downloading files"
./download.sh

echo "split files into pages"
./split.shh

echo "ocr the pages"
./ocr.sh
