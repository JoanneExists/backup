#!/usr/bin/env sh
while getopts ":i:o:" FLAG; do
    case $FLAG in
        i)
            INPUT_DRIVE="${OPTARG}" ;;
        o)
            OUTPUT_DRIVE="${OPTARG}" ;;
backup()
    {
         sudo dd if="${INPUT_DRIVE}" of="${OUTPUT_DRIVE}" status=progress bs=64k conv=sync
    }
