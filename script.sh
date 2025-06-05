#!/bin/bash
ver=$(uname -r | cut -d'-' -f1)

if [ "$(echo -e "$ver\n5.8" | sort -V | head -n1)" = "5.8" ] && [ "$(echo -e "$ver\n5.16.11" | sort -V | head -n1)" = "$ver" ]; then
    echo "Kernel vulnerable a Dirty Pipe ($ver)"
else
    echo "Kernel seguro o fuera del rango vulnerable ($ver)"
fi
