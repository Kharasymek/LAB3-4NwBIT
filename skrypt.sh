#!/bin/bash
if [ "$1" == "--date" ]; then
    date
fi
if [ "$1" == "--logs" ]; then
    count=${2:-100}
    for i in $(seq 1 $count); do
        echo "log${i}.txt" > log${i}.txt
        echo "Utworzony przez: $0" >> log${i}.txt
        date >> log${i}.txt
    done
fi
if [ "$1" == "--help" ]; then
    echo "Dostępne opcje:"
    echo "--date  : wyświetla dzisiejszą datę"
    echo "--logs  : tworzy 100 plików logx.txt"
    echo "--logs N: tworzy N plików logx.txt"
    echo "--help  : wyświetla dostępne opcje"
fi
