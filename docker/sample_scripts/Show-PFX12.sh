#!/bin/sh
if [ $# -lt 1 ]
then
        echo
        echo "Display all info in the PFX/P12 file."
        echo "Usage: ./Show-PFS12.sh keystore_filename.p12"
        echo
        exit
fi

if [[ -f $1 ]]
then
        #show all info in the PFX/P12 file
        openssl pkcs12 -info -in $1
else
        echo
        echo "<<ERROR>>"
        echo "File not exists : $1"
        echo ""
fi