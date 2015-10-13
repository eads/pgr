#!/bin/bash

gs -o tiff/tomo-001-page-%04d.tif -sDEVICE=tiffg4 pdf/tomo-001.pdf
