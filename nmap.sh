#!/bin/bash

echo "1.- Enumeracion"
echo "2.- Vuln "

read -p "cual script: " pp

echo "ip: "
read ip

nmaap=$(nmap -p 80 --script http-enum $ip > enum.txt)

if [ $pp -eq 1 ]; then
	echo "Enumeracion a la ip: $ip"
#	echo "nmap -p 80 --script http-enum $ip -vvv "
#	$nmaap > enum.txt
	echo "se creo archivo enum.txt"
else 
	echo "Analisis de vulnerabilidades a la ip: $ip"
fi

