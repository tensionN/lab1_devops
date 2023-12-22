#!/bin/bash

while getopts "p:s:" opt; do
  case $opt in
    p)
      directory_path="$OPTARG"
      ;;
    s)
      file_extension="$OPTARG"
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

if [ -z "$directory_path" ] || [ -z "$file_extension" ]; then
     echo "Usage: $0 -p <directory_path> -s <file_extension>"
     exit 1
fi

if [ ! -d "$directory_path" ]; then
     echo "Error: $directory_path is not a directory."
     exit 1
fi

file_count=$(find "$directory_path" -maxdepth 1 -type f -name "*.$file_extension" | grep -c '.*')

echo "Number of files with extension .$file_extension in $directory_path: $file_count"
