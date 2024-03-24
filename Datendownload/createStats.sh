#!/bin/bash

cat las.preobj.txt 
| awk 'BEGIN{x=0;y=0;z=0;c=0} {c=c+1 ;x=x+$1; y=y+$2; z=z+$3 } END{print  x/c " " y/c " " z/c " " c}'
> stats.txt