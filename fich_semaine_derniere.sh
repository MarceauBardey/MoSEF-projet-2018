#!/bin/bashm
cd ~
date=$(date +%d %B %Y)
username=$(whoami)

echo "Bienvenue $username, nous sommes le $date"

read -p "Quel répertoire vous intéresse aujourd'hui ?" rep
find -name $rep -exec ls {} \;

cd ~






