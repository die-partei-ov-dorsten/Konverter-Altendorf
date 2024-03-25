#!/bin/bash

cat ../tmp/classes.txt |
    while read class
    do
        echo "Erzeuge Klasse $class"
        echo "o class$class" > ../Objects/class$class.obj
        grep -E " $class$" ../tmp/las.preobj.moved |
            awk '{print "v " $1 " " $2 " " $3}' >> ../Objects/class$class.obj
    done