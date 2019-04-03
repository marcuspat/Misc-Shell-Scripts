#!/bin/bash  

#Script to monitor RAID on Perc 6 Controllersf
#Written By Marcus Patman
#Requires megaclisas-status from FreeBSD Ports or Debian Tree


PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root

EMAIL_ADDRESS=marcus@adventurewave.com
EMAIL_SUBJECT="RAID Failed on $HOSTNAME!"

RNFO=$HOME/rnfo.txt
RESULT=$HOME/result.txt
REPORT=`cat $RNFO`

#Function to remove the previous datafile

rminfo() {

 rm $RNFO  

 if [[ -f $RNFO ]] ; then

  echo "$RNFO Exists!"
  echo "Now parsing file for raid status"

fi

}



#Check results file for degraded array

parse() {

 rm $RESULT

 if [[ -f $RESULT ]] ; then

   echo "$RESULT Exists!"

 fi

 awk /Degraded/ $RNFO > $RESULT

 echo "hi there!" > $RESULT

 if [[ -s $RESULT ]]; then

 echo "One or more arrays are DEGRADED!"

 email

 else

 echo "No Degraded Arrays Found!"

fi

}

#Running the megaclisas-status script and redirecting output to $RNFO

check() {

 megaclisas-status > $RNFO

}

email() { 

echo -e \n One or more Arrays have failed on $HOSTNAME report below: $REPORT | mail -s "$EMAIL_SUBJECT" $EMAIL_ADDRESS

}


echo "Deleting previous data file..."

rminfo

echo "Generating data..."

check

echo "Parsing data..."

parse

exit
