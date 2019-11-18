#!/bin/bash
#Sina

for ip in $(egrep -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' access_log_Jul95)
do
    geoiplookup $ip >> geoiplookup.txt

done
grep  "AU" geoiplook.txt >> result.txt