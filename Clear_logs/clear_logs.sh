#!/bin/sh

# L'utilisateur entre le chemin du répertoire ciblé
echo '\033[34mVeuillez entrer le chemin du répertoire à afficher : \033[0m\c'
read cheminRep

# Affiche les fichiers avec leurs poids et leurs dates de dernière modification
cd $cheminRep
du -ah --time

# Variable du fichier à purger
echo '\033[34mVeuillez entrer le fichier à purger : \033[0m\c'
read fichier

# Condition si le fichier existe
if [ -e "$fichier" ] ;
  then
        echo "\033[32mFichier sélectionnez, début du nettoyage ... \033[0m"
        sleep 2

        # Purger le fichier log
        > $fichier

        echo "\033[32m$fichier vide \033[0m"
        sleep 3
        du -ah --time

          #sinon erreur
          else
            echo "\033[31mErreur le fichier n'existe pas ! \033[0m"
             sleep 3
fi

