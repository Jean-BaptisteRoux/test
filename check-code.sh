#!/bin/sh 

# Vérifier que le fichier n'est pas vide
if [ -s "$1" ]; then
    echo "Erreur : le fichier '$1' n'est pas vide."
    exit 3
else
    echo "Le fichier '$1' est vide.  PIXEEEEELLLL"
fi
