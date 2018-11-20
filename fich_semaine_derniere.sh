#!/bin/bashm
cd ~
date=$(date +%d %B %Y)
username=$(whoami)

echo "Bienvenue $username, nous sommes le $date"

read -p "Quel répertoire vous intéresse aujourd'hui ?" rep
find -name $rep -exec ls {} \;

read -p "Veuillez indiquer le répertoire pour lequel vous souhaitez voir tous les changements éffectués depuis une semaine " repertoire
find -name $repertoire -exec find -type f -mtime -7 {} \;

cd ~/gitstuff/MoSEF-projet-2018






