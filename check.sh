#!/bin/bash

tkn pipelinerun logs > out.txt

if grep -q Goodbye out.txt; then
    echo "Goodbye found"
else
    echo "Goodbye broke"
    exit 1
fi

if grep -q Hello out.txt; then
    echo "Hello found"
else
    echo "Hello broke"
    exit 1
fi

rm out.txt
