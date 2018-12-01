#!/bin/bashm
date=$(date '+%d %B %Y')

echo "Bienvenue $USER, nous sommes le $date"

cd ~
read -p "Quel répertoire vous intéresse aujourd'hui (Veuillez indiquer le chemin complet de répertoire depuis ~) ?" rep
cd $rep
ls

cd ~
read -p "Veuillez indiquer le chemin complet du répertoire pour lequel vous souhaitez voir les fichiers qui ont été modifiés il y à moins d'une semaine " repertoire
cd $repertoire
fichiermodif=$(find -type f -mtime -7)
echo "$fichiermodif"











