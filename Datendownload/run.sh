#!/bin/bash

# Lesen aller Zeilen die kein Kommentar sind
grep -Ev '^#' config | 
    # entfernen von Unterstrichen und carriage return (für Windows)
    tr -d '_\r' |
    #Formatieren des Dateinamens
    sed -f formatKachelname |
    # Speichern der Kachelnamen
    tee ../tmp/kachelnamen.txt |
    # Für alle Kachelnamen
    while read name
    do
        echo "Kacheln  $name wird nach ../tmp/$name.laz herruntergeladen"
        curl --output "../tmp/$name.laz" "https://www.opengeodata.nrw.de/produkte/geobasis/hm/3dm_l_las/3dm_l_las/$name.laz"
    done
   
