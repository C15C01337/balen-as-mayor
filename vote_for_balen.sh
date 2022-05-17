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

function voteCheck() {

wget https://localelection.ekantipur.com/pradesh-3/district-kathmandu/kathmandu?lng=eng
mkdir mayor
mv kathmandu* mayor/
cp mayor/kathmandu* mayor/final.txt
sed -e "s/.\{380\}/&\n/g" < mayor/final.txt | grep 'Balendra\|Keshav' > mayor/election.txt
sed -e "s/.\{48\}/&\n/g" < mayor/election.txt
cat mayor/election.txt | grep 'candidate-name\|vote-numbers' > mayor/ultimate-balen.txt
sed -e "s/.\{16\}/&\n/g" < mayor/ultimate-balen.txt > mayor/lauro.txt
clear
sed -n -e 7p -e 8p -e 14p -e 30p -e 38p mayor/lauro.txt

}

function main() {
echo "If you have the previous vote count then press Y or y to delete it.(y/n)"
read vote
if [[ "$vote" == "Y" || "y" ]]
then
  sudo rm -rf mayor
  voteCheck
else
  voteCheck
fi
}

main
