#!/bin/bash

echo "Devloped by @C15C01337 twitter "
echo "
   ______ ___ ______ ______ ____  ___ _____ _____ _____
  / ____/<  // ____// ____// __ \<  /|__  /|__  //__  /
 / /     / //___ \ / /    / / / // /  /_ <  /_ <   / /
/ /___  / /____/ // /___ / /_/ // / ___/ /___/ /  / /
\____/ /_//_____/ \____/ \____//_/ /____//____/  /_/
"
sleep 5

wget https://localelection.ekantipur.com/pradesh-3/district-kathmandu/kathmandu?lng=eng
cp kathmandu* final.txt
sed -e "s/.\{380\}/&\n/g" < final.txt | grep 'Balendra\|Keshav' > election.txt
sed -e "s/.\{48\}/&\n/g" < election.txt
cat election.txt | grep 'candidate-name\|vote-numbers' > ultimate-balen.txt
sed -e "s/.\{16\}/&\n/g" < ultimate-balen.txt > lauro.txt
clear
sed -n -e 7p -e 8p -e 14p -e 30p -e 38p lauro.txt 
