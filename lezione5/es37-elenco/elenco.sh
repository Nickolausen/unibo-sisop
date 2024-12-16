#!/bin/bash

echo Creata directory DIR_TEST{1..5}
echo Creato file FILE_TEST{1..5}.txt

mkdir DIR_TEST{1..5}
touch FILE_TEST{1..5}.txt

FILES_ONLY=0
LungNomiDirectory=""

# Filtro solo i files
for FILE in `ls -p ./ | grep -v /`
do
	(( FILES_ONLY=$FILES_ONLY+1 ))	
done

# Filtro solo le directories
for DIR in `ls -p ./ | grep "/$"`
do
	LungNomiDirectory+=${DIR}
done

echo Rimozione DIR_TEST{1..5}
echo Rimozione FILE_TEST{1..5}.txt
rm -rf DIR_TEST{1..5}
rm FILE_TEST{1..5}.txt

echo "Files trovati: $FILES_ONLY"
echo "Directories: ${#LungNomiDirectory}"
