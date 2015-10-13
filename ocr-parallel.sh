#!/bin/bash

parallel './ocr.sh {}' ::: tiff/*
