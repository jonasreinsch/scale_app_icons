#!/usr/bin/env bash

if [[ $# != 2 ]]; then
    echo "Usage: $0 INPUT_FILE OUTPUT_DIRECTORY"
    exit 1
fi

input_file="$1"
output_directory="$2"

if [[ ! -f "$input_file" ]]; then
    echo "$input_file doesn't seem to exist"
    exit 1
fi

if [[ ! -d "$output_directory" ]]; then
    echo "output_directory doesn't exist or is no directory"
    exit 1
fi

gm convert -resize '40x40' "${input_file}"   "${output_directory}/icon-40.png" 
gm convert -resize '80x80' "${input_file}"   "${output_directory}/icon-40@2x.png"
gm convert -resize '120x120' "${input_file}" "${output_directory}/icon-40@3x.png"
gm convert -resize '50x50' "${input_file}"   "${output_directory}/icon-50.png"    
gm convert -resize '100x100' "${input_file}" "${output_directory}/icon-50@2x.png"
gm convert -resize '120x120' "${input_file}" "${output_directory}/icon-60@2x.png"
gm convert -resize '180x180' "${input_file}" "${output_directory}/icon-60@3x.png"
gm convert -resize '120x120' "${input_file}" "${output_directory}/icon-60@2x.png"
gm convert -resize '72x72' "${input_file}"   "${output_directory}/icon-72.png"
gm convert -resize '144x144' "${input_file}" "${output_directory}/icon-72@2x.png"
gm convert -resize '76x76' "${input_file}"   "${output_directory}/icon-76.png"    
gm convert -resize '152x152' "${input_file}" "${output_directory}/icon-76@2x.png"
gm convert -resize '29x29' "${input_file}"   "${output_directory}/icon-29.png"
gm convert -resize '58x58' "${input_file}"   "${output_directory}/icon-29@2x.png"
gm convert -resize '87x87' "${input_file}"   "${output_directory}/icon-29@3x.png"
