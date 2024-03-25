#!/bin/bash

# lesen der Statistikwerte
x=$(cat ../tmp/stats.txt | awk '{print $1}')
y=$(cat ../tmp/stats.txt | awk '{print $2}')
z=$(cat ../tmp/stats.txt | awk '{print $3}')
c=$(cat ../tmp/stats.txt | awk '{print $4}')

# lesen der Datenpunkte
cat ../tmp/las.preobj.txt |
    # Umwandeln der Punkte und speichern in moved Datei
    awk 'BEGIN{ dx='$x';dy='$y';dz='$z';} {x=$1-dx; y=$2-dy; z=$3-dz; print x " " y " " z " " $4}' > ../tmp/las.preobj.moved