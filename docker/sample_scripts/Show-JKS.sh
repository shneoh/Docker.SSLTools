#!/bin/sh
if [ $# -lt 1 ]
then
        echo
        echo "Display all info in the Keystore file."
        echo "Usage: ./Show-JKS.sh keystore_filename.jks"
        echo
        exit
fi

if [[ -f $1 ]]
then
        #show all info in the keystore file
        keytool -list -v -keystore $1
else
        echo
        echo "<<ERROR>>"
        echo "File not exists : $1"
        echo ""
fi