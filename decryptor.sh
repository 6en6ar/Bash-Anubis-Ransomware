#!/bin/bash

folder=/home/"$USER"/Ransomware/TestFolder
#cat password.b64 > password
find "$folder" -name "*.anubis" -type f | while read -r filename; do openssl enc -aes-256-cbc -d -in "$filename" -out "${filename%.*}" -pass file:./password;rm "$filename"; done