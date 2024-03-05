#!/bin/bash
aprobado=0
suspendido=0
while read -r linea; do
nota=$(echo "$linea" |awk {'print $3'})

if [ $nota -ge 5 ]; then
        ((aprobado++))
    else
        ((suspendido++))
    fi
done < notas.txt
echo "Aprobados:" $aprobado
echo "Suspendido:" $suspendido