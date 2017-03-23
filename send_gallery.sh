#!/bin/bash

if [ `whoami` == "root" ]; do
    
done

while true; do
    for file in gallery/*.ft; do
        echo Sending $file
        ./rpitx -m RF -i $file -f 144500
        
    done
done