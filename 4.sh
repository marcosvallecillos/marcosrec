#!/bin/bash

while read -r linea;do
nombre=$(echo "$linea"| awk {'print $1'})
nota=$(echo "$linea" | awk {'print $3'})
lineas=$(echo "$linea" | wc -l)
if [ $1 = $nombre ]; then
      total_nota=$((total_nota + nota))
        num_lineas=$((num_lineas + 1))
        media=$((total_nota/num_lineas))
    fi
    done < notas.txt
    if [ $nota -ge 5 ]; then
     echo " Aprobado (enhorabuena jefe)"
     else
     echo " Suspendido (eres de francia)"
     fi
