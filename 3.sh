#!/bin/bash

nota=`./1.sh`
while read -r linea;do
nombre=$(echo "$linea" | awk {'print $1'})
modulo=$(echo "$linea" | awk {'print $2'})

    if [ $1 -eq $nombre && $2 -eq $modulo ]; then
    $nota
    fi
    done < notas.txt
    echo "La nota de $1 en el modulo de $2 es: $nota"