#!/bin/bash -v

#Keeps the backup dumps no longer than 5 days
#Files older than 5 days are automatically deleted

EMAIL_ADDRESS=mpatman@adventurewave.com
EMAIL_SUBJECT="$HOSTNAME Backup Files Not Found!"
USDIR=/home/mpatman/dbdumps/us
UKDIR=/home/mpatman/dbdumps/uk
FRDIR=/home/mpatman/dbdumps/fr
DEDIR=/home/mpatman/dbdumps/de
ESDIR=/home/mpatman/dbdumps/es
SBSPDIR=/home/mpatman/dbdumps/sbsp

if [ -z $(ls $FRDIR) ]

  then

  echo The Following Directory Is Empty: $FRDIR! | mail -s "$EMAIL_SUBJECT" $EMAIL_ADDRESS
  
  else

  find $FRDIR -mtime +5 -exec rm {} \;

fi
ls $FRDIR)
ls $FRDIR

sleep 2

if [ -z $(ls $USDIR) ]

  then

  echo The Following Directory Is Empty: $USDIR! | mail -s "$EMAIL_SUBJECT" $EMAIL_ADDRESS

  else

  find $USDIR -mtime +5 -exec rm {} \;

fi
ls $USDIR)
ls $USDIR
./prune2.sh: line 30: [: too many arguments

sleep 2

if [ -z $(ls $UKDIR) ]

  then
  echo The Following Directory Is Empty: $UKDIR! | mail -s "$EMAIL_SUBJECT" $EMAIL_ADDRESS

  else

  find $UKDIR -mtime +5 -exec rm {} \;

fi
ls $UKDIR)
ls $UKDIR
./prune2.sh: line 44: [: too many arguments

sleep 2

if [ -z $(ls $DEDIR) ]

  then
  find $UKDIR -mtime +5 -exec rm {} \;

fi

sleep 2

if [[ -z $(ls $DEDIR) ]]

  then
  echo The Following Directory Is Empty: $DEDIR! | mail -s "$EMAIL_SUBJECT" $EMAIL_ADDRESS

  else

  find $DEDIR -mtime +5 -exec rm {} \;

fi

sleep 2

if [[ -z $(ls $ESDIR) ]]

  then
  echo The Following Directory Is Empty: $ESDIR! | mail -s "$EMAIL_SUBJECT" $EMAIL_ADDRESS

  else

  find $ESDIR -mtime +5 -exec rm {} \;

fi

sleep 2

if [[ -z $(ls $SBSPDIR) ]]

  then
  echo The Following Directory Is Empty: $SBSPDIR! | mail -s "$EMAIL_SUBJECT" $EMAIL_ADDRESS

  else

  find $SBSPDIR -mtime +5 -exec rm {} \;

fi

exit

