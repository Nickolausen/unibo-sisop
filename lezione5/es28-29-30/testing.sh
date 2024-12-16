#!/bin/bash

echo "" -n > file.txt
echo "waw w0w merda cacca culo mamma lala*la" > file.txt
echo "trollo ciao lollo sono lollo bar*collo ma" >> file.txt
echo "dj treeplo woaw tun tuu tu tun" >> file.txt
echo "santa creolina abate senza moglie come fate" >> file.txt
echo "lorem ipsum ipse dixit disse bruto figlio" >> file.txt

# Step 1: cut
# Step 2: sed
# Step 3: wc

echo '!w/RegExp'
cut -c 3-5,10-15 file.txt | sed 's/*//g' | sed 's/ //g' | sed 's/\t//g' | wc -c

echo 'w/RegExp'
cut -c 3-5,10-15 file.txt | sed 's/[\*	  ]//g' | wc -c

rm file.txt
