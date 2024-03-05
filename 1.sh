#!/bin/bash

if [ $1 -gt 8 ]; then
    echo "Sobresaliente"
    elif [ $1 -ge 5 ]
    then
    echo "Aprobado"
    else
        echo "Suspendido"
    fi