#!/bin/bash
# search_etxt.sh
# Usage:  ./search_text.sh directory keyworad

if [ $# -ne 2 ]; then
 echo "Usage: $0 <directoory> <keyword>"
 exit 1
fi

find "$1" -type f -name "*.txt" -exec grep -Hn "$2" {} \;
