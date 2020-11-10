#!/bin/bash

DATAFILE=./data.txt

echo "####### Crime Statistics Data #######"
echo -n "Enter your county:   " 

read COUNTY




if  RESULT=$(grep -i $COUNTY $DATAFILE)

then 
	NUMBEROFCRIMES=$(echo "$RESULT" | grep -Eo \d+) #Regex \b represents word boundaries \d represents digits + sign represents one or more digits. Match anything that is one or more digits surrounded by word boundaries
	echo "$NUMBEROFCRIMES"
else 
	echo "County Not Found"

fi

