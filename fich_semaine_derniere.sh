#!/bin/bashm
date=$(date '+%d %B %Y')

echo "Bienvenue $USER, nous sommes le $date"

cd ~
read -p "Quel répertoire vous intéresse aujourd'hui (Veuillez indiquer le chemin complet de répertoire depuis ~) ?" rep
cd $rep
ls

cd ~
read -p "Veuillez indiquer le répertoire pour lequel vous souhaitez voir tous les changements éffectués depuis une semaine (indiquer le chemin complet depuis ~) " repertoire
cd $repertoire
fichiermodif=$(find -type f -mtime -7)
echo "$fichiermodif"











