#!/bin/bash

echo "entrer le repertoire dans lequel vous voulez rechercher les doublons"

read repository

find $repository -not -type d -exec sha1sum {} \; | sort -k1.32 | uniq -w 32 -D | awk '{print $2}'
