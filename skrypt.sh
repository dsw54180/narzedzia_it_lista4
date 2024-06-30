#!/bin/bash
if [ "$1" == "--date" ]; then
  date
elif [ "$1" == "--logs" ]; then
  for ((i=1; i<=100; i++)); do
    echo -e "Numer pliku: $i, stworzony przez: $0, data: $(date)" > log_$i.txt
  done
else
  echo "Unknown option: $1"
fi
