#!/bin/bash
for i in $( cat paperid.txt ); do
    mkdir /home/$i
done
