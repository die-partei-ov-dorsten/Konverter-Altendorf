#!/bin/bash

echo "leeren des TMP Verzeichnisses"
rm -rf ./tmp/*

echo "Herrunterladen der Datein"
cd Datendownload
./run.sh 
cd ..


cd Scripts
echo "Mergen der Dateien"
./merge.sh
echo "Erzeugen von Statistiken"
./stat.sh
echo "bewegen des Daten zur Mitte des späteren Objektes"
./move.sh
echo "extrahieren der LiDAR Klassen"
./xtractclass.sh
echo "schreiben der Objecte"
./writeobjects.sh
cd ..

