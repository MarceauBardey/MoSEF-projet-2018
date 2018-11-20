#!/bin/bashm
cd ~
date=$( date '+%d %B %Y')
username=$(whoami)

echo "Bienvenu $username, nous sommes le $date"

read -p "Quel repertoire vous intersse aujourd'hui ?" repertoire
find -name $repertoire -exec ls {} \;

cd ~/gitstuff/MoSEF-projet-2018






