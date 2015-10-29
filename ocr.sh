#!/bin/bash

echo "Processing $1"
base_filename=`basename $1 .tif`
echo $base_filename
#processed_file="processed/`basename $1`"
output_file="text/${base_filename}.txt"
output_path="text/${base_filename}"

if [ ! -e "$output_file" ]; then
    echo "Preprocessing $1"
    convert $1 \
      -rotate "-1.1" \
      -deskew "-10" \
      -level 3%,60%,.9 \
      -despeckle \
      -noise 2 \
      +repage \
      "processed/${base_filename}.tif"
      #$processed_file

    #unpaper --overwrite --no-deskew --no-grayfilter --no-border-align --no-noisefilter "processed/${base_filename}.pbm" "processed/${base_filename}-unpaper.pbm"

    #convert "processed/${base_filename}-unpaper.pbm" "processed/${base_filename}-unpaper.tif"

    echo "OCR $1"
    tesseract -l spa "processed/${base_filename}.tif" $output_path
else
    echo "Skipping $1"
fi
