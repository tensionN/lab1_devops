#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <path> <extansion>"
    exit 1
fi

path="$1"
extansion="$2"

find "$path" -type f -name "*.$extansion"