#!/bin/bash


echo "Script de enumeracion"
echo "1.- Nmap"
echo "2.- Gobuster "
echo "3.- Wfuzz"
read -p "cual script: " sc

echo "ip: "
read ip

#nmaap=$(nmap -p 80 --script http-enum $ip > enum.txt)

if [ $sc -eq 1 ]; then
	echo "Enumeracion a la ip: $ip"
	echo "Realizando: nmap -p 80 --script http-enum $ip -vvv "
#	$nmaap > enum.txt
	$(nmap -p 80 --script http-enum $ip > enummap.txt)
	echo "se creo archivo enummap.txt"
elif [ $sc -eq 2 ]; then
	echo "Enumeracion a la ip: $ip"
	echo "Realizando: gobuster dir -u $ip -t 50 -w /usr/share/wordlists/dirb/big.txt"
	$(gobuster dir -u $ip -t 50 -w /usr/share/wordlists/dirb/big.txt>enumgo.txt)
	echo "Se creo el archivo enumgo.txt"
else
	echo "Enumeracion a la ip: $ip"
	echo "Realizando: wfuzz -c --hc 404 -t 200 -w /usr/share/wordlists/dirbuster/directory-list-lowercase-2.3-medium.txt -u http:$ip "
	$(wfuzz -c --hc 404 -t 200 -w /usr/share/wordlists/dirbuster/directory-list-lowercase-2.3-medium.txt -u http://$ip > enumwfuzz.txt)
	echo "Se creo el archivo enumfuzz.txt"
fi
