#!/bin/ksh

FECHA=`date`
echo "Usuarios conectados:" > /tmp/"$FECHA".txt
who >> /tmp/"$FECHA".txt
echo >> /tmp/"$FECHA".txt
echo "Ultimas 10 conexiones:" >> /tmp/"$FECHA".txt
last -10 >> /tmp/"$FECHA".txt

mailx -s "Acceso de root `hostname`" pan_it_unix@digicelgroup.com < /tmp/"$FECHA".txt

exit 0
