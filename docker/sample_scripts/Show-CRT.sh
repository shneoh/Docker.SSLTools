#!/bin/sh
if [ $# -lt 1 ]
then
        echo
        echo "Display SSL certificate details."
        echo "Usage: ./Show-CRT.sh certificate_filename.ext"
        echo
        exit
fi

if [[ -f "$1" ]]
then
        #show domain certificate details
        keytool -printcert -v -file "$1"
else
        echo
        echo "<<ERROR>>"
        echo "File not exists : $1"
        echo ""
fi