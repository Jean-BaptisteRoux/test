#!/bin/sh 

# Vérifier que le fichier n'est pas vide
if [ -s "$1" ]; then
    echo "Le fichier '$1' n'est pas vide."
else
    echo "Erreur : le fichier '$1' est vide."
    exit 3
fi

