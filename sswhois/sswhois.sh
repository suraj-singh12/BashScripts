#!/bin/bash

# https://linuxhint.com/remove_characters_string_bash/
# https://github.com/emugel/grepip
 AR=(`ss -anpt  |grep ESTAB | awk '{ print $5 }' | cut -d: -f1 | sort -u`)

# AR=(`ss -anpt  |grep ESTAB | awk '{ print $5 }' | sort -u`) # td -d [ | tr -d ] => resolve os braquetes mas falta : e porta

for i in ${AR[@]}
  do
   echo $i
   `whois $i >> whois-results.txt`
	whois $i	
  done

