#!/usr/bin/env bash
# File: guessinggame.sh

function hotcold {
  if [[ $1 -lt $filenum ]]
  then
  	echo guesse is too low
  else
  	echo guesse is too high
  fi
}

guesse=-1
filenum=$(ls -l | grep '^-' | wc -l)
read -p "please gusse the nuber of file in directory: " guesse
echo "your guesse is $guesse"
while [ $guesse -ne $filenum ]
do
	echo entered while
	hotcold $guesse
	read -p "guesse again: " guesse
done
