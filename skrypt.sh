#!/bin/bash
if [ "$1" == "--date" ]; then
  date
elif [ "$1" == "--logs" ]; then
  if [ -n "$2" ]; then
    for ((i=1; i<=$2; i++)); do
      echo -e "Numer pliku: $i, stworzony przez: $0, data: $(date)" > log_$i.txt
    done
  else
    for ((i=1; i<=100; i++)); do
      echo -e "Numer pliku: $i, stworzony przez: $0, data: $(date)" > log_$i.txt
    done
  fi
else
  echo "Unknown option: $1"
fi