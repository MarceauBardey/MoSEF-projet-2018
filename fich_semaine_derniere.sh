#!/bin/bashm
cd ~

read -p "Veuillez indiquer le répertoire pour lequel vous souhaitez voir tous les changements éffectués depuis une semaine " repertoire
find -name $repertoire -exec find -type f -mtime -7 {} \;

cd ~/gitstuff/MoSEF-projet-2018






