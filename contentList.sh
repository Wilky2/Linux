#!/bin/bash

echo "Entrer l'adresse du repertoire"

read repository

ls $repository > listFile.txt

echo "Le resultat a ete enregistre dans listFile.txt"
