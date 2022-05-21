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
sed -n -e 8p -e 9p -e 15p -e 31p -e 39p mayor/lauro.txt > mayor/finalresult.txt
cat mayor/finalresult.txt
echo ""
sleep 1
echo "Now difference in vote count"
a=$(sed -n -e 3p mayor/finalresult.txt | awk {'print $1'} | sed -e "s/.\{7\}/&\n/g" | sed -n -e 2p)
b=$(sed -n -e 5p mayor/finalresult.txt | awk {'print $1'} | sed -e "s/.\{9\}/&\n/g" | sed -n -e 2p)

echo "Balen is leading the vote count by $(($a-$b))"
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
