#!/bin/bash
cd ~
date=$(date +%d %B %Y)

echo "Bienvenue $USER, nous sommes le $date"

read -p "Quel répertoire vous intéresse aujourd'hui (Veuillez indiquer le chemin complet depuis ~) ?" rep
cd $rep
ls








