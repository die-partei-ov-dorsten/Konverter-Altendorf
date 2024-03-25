#!/bin/bash

. ../config/config

# bestimmen des absoluten Pfades zum tmp Verzeichniss
path=$(pwd|sed '{s/Scripts/tmp/}')/

# lesen der Kachelnamen
cat ../tmp/kachelnamen.txt |
    # und für jeden Namen
    while read name
    do
        # den absoluten Pfad der Datei ausgeben
        echo $path$name.laz
    # und als filelist speichern
    done > ../tmp/filelist.txt

echo "die Kacheln mit den lastools zusammenfügen und die notwendigen Daten exportieren"
$lastools/las2txt -v -lof $path/filelist.txt  -merged -o $path/las.preobj -parse xyzc
