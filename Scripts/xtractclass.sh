#!/bin/bash

# lesen aller Klassen
awk '{print $4}'  ../tmp/las.preobj.moved |
    # Sortieren und Zusammenfassen und speichern
    sort | uniq > ../tmp/classes.txt