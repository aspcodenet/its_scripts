#!/bin/sh

## Skapa en WHITELIST där du skriver in IP-adresser att pinga, går snabbt att bara köra direkt i terminalen: echo sunet.se > iplist.txt
## Scriptet kollar om adressena är Online eller Offline, skapas en fil som heter pingresults.txt

time=`date`

awk '{print $1}' < iplist.txt | while read ip; do
    if ping -c1 $ip >/dev/null 2>&1; then
        echo $ip is Online as of, $time
    else
        echo $ip is Offline as of, $time
    fi
done >> pingresults.txt