#!/bin/bash
#Marcus

# Skapa en Whitelist.txt med kända ip-adresser för dig
# byt ut ip adressen i raden under mot det nät/ip range du vill scanna.
IP=$(nmap -sL 172.20.202.{1..10} | grep 'Nmap scan report for' | cut -f 5 -d ' ' ) 
for i in $IP
do
	valid=$(grep $i WHITELIST.TXT | wc -l)
	if [[ $valid -lt 1 ]]
	then 
		echo " $(date -u): suspicios ip detected: $i " >> INTRUDERS.TXT
	fi
done
