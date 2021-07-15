#!/bin/bash
for i in $( cat paperid.txt ); do
    useradd $i
    echo "user $i added successfully!"
    echo $i:$i | chpasswd
    echo "Password for user $i changed successfully"
done
