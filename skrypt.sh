#!/bin/bash
if [[ "$1" == "--date" || "$1" == "-d" ]]; then
    date
fi
if [[ "$1" == "--logs" || "$1" == "-l" ]]; then
    count=${2:-100}
    for i in $(seq 1 $count); do
        echo "log${i}.txt" > log${i}.txt
        echo "Utworzony przez: $0" >> log${i}.txt
        date >> log${i}.txt
    done
fi
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "Dostępne opcje:"
    echo "--date, -d  : wyświetla dzisiejszą datę"
    echo "--logs, -l  : tworzy 100 plików logx.txt"
    echo "--logs N, -l N: tworzy N plików logx.txt"
    echo "--help, -h  : wyświetla dostępne opcje"
fi
if [ "$1" == "--init" ]; then
    git clone https://github.com/Kharasymek/LAB3-4NwBIT $(pwd)/projekt
    export PATH=$(pwd)/projekt:$PATH
fi
if [[ "$1" == "--error" || "$1" == "-e" ]]; then
    count=${2:-100}
    mkdir -p error
    for i in $(seq 1 $count); do
        mkdir -p error/error${i}
        echo "error${i}.txt" > error/error${i}/error${i}.txt
        echo "Utworzony przez: $0" >> error/error${i}/error${i}.txt
        date >> error/error${i}/error${i}.txt
    done
fi
