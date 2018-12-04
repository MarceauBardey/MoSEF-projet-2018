# **Fichier Descriptif du projet 2018 en linux de Marceau Bardey**

Précision de lecture du document: Les commentaires explicatifs sur les programmes sont précédés de "#"

## 1.Forker ce dépôt dans votre compte Github.
Le forkage a été éffectué depuis le compte github de Amadou BALDE

## 2.Clonage et création du fichier readme.md

Git clone https://github.com/MarceauBardey/MoSEF-projet-2018.git

Vim README.md #ce fichier sera complété au fur et à mesure du projet pour être "commité" et "pushé" avant l'envoi du rendu final.

## 3.Créer le script fich_semaine_derniere.sh
Vim fich_semaine_derniere.sh

Création du programme :

  !/bin/bash

  cd ~  #je me place dans la source 
  date=$(date '+%d %B %Y')  #création de la variable date sous forme « 5 December 2018 »

  echo « Bienvenue $USER, nous sommes le $date » #ce qui s’affiche quand l’utilisateur lance le progarmme 

  
  read –p « Quel répertoire vous interesse aujourd’hui (Veuillez indiquer le chemin complet depuis ~) ?  rep #demande à l’utilisateur de rentrer le repertoire qui l’intéresse
  
  cd $rep #déplacement vers le repertoire
  
  ls #affiche le contenu du repertoire saisi par l’utilisateur
 
  Bash fich_semaine_ derniere.sh #Pour éffectuer le programme

## 4.Commiter le fichier dans le dépôt local puis le pousser dans le dépôt distant
git add fich_semaine_derniere.sh

git commit –m « Création du Programme pour projet 2018 »

git push –u orgin master

## 5.Sur le dépôt local, créer une nouvelle branche.
 git branch maj-projet

## 6. Editer le script dans la nouvelle branche pour qu’il affiche les fichiers modifiés il y a moins d’une semaine (du repertoire saisi par l’utilisateur)
Checkout maj-projet
 
vim fich_semaine_derniere.sh

  cd ~  #je me place dans la source 
 
  date=$(date '+%d %B %Y')  #création de la variable date sous forme « 5 December 2018 »

  echo « Bienvenue $USER, nous sommes le $date » #ce qui s’affiche quand l’utilisateur lance le progarmme 

  read –p « Quel répertoire vous interesse aujourd’hui (Veuillez indiquer le chemin complet depuis ~) ?  rep #demande à l’utilisateur de rentrer le repertoire qui l’intéresse

  cd $rep #déplacement vers le repertoire

  ls #affiche le contenu du repertoire saisi par l’utilisateur

Vous remarquez que j'ai décidé de ne pas modifier la première partie. Je modifie le programme à partir de maintenant car j'interprète la question comme l'ajout d'une information à apporter à l'utilisteur et non pas une modification simple de la première information qui à été donnée l'utilisateur.

cd ~ #Je me place dans la source

read -p "Veuillez indiquer le chemin complet du répertoire pour lequel vous souhaitez voir les fichiers qui ont été modifiés il y à moins d'une semaine" repertoire

cd $repertoire #je me déplace dans le fichier indiqué par l'utilisateur

fichiermodif=$(find -type f -mtime -7) #création de la variable qui cherche les fichiers (-type f) modifiés il y à moins de 7 jours (-mtime -7)

echo "$fichiermodif" affichage des fichiers modifiés il y à moins d'une semaine.

## 7. Pousser le changement dans votre dépôt distant
Git add fich_semaine_derniere.sh

Git commit –m « 1ère modification du programme »

Git push –u origin maj-projet

## 8.Faire une pull request de la nouvelle branche sur master. Fusionner la pull request
 Sur github :

>MarceauBardey/MoSEF-projet-2018

>New pull request

>base fork : MarceauBardey/MoSEF-projet-2018	base: Master 	head fork: MarceauBardey/MoSEF-projet-2018		compare: maj
> commentaire: “Pull request du fichier fich_semaine_derniere.sh de la branche maj vers la branche master »

> create pull request

>merge 

>confirm merge

## 9.En local fusionner la nouvelle branche master
Git checkout master

Git merge maj

## 10.Vous n'avez plus besoin du fichier Consignes.md, supprimez-le en local et poussez les modifications sur Github
rm Consignes.md

git push -u origin master

