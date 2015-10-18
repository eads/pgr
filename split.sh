#!/bin/bash

gs -o tiff/tomo-001-page-%04d.tif -sDEVICE=tiffgray -r600x600 pdf/tomo-001.pdf
