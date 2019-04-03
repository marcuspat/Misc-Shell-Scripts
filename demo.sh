#!/bin/bash

EMAIL_ADDRESS=sdelic@sdelic.org
EMAIL_SUBJECT=HELPME....


read -p "Do you want to send email?" answer


if [ $answer == yes ] 

then

printf "%s\n" "Sending Email Now!"


echo This is mail sending | mail -s "Check this" sdelic@sdelic.org

else

printf "%s\n" "C'mon, do you want to send email or not?"

fi

exit
