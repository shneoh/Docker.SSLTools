#!/bin/sh

if [ $# -lt 1 ]
then
        echo
        echo "Convert DER to PEM format."
        echo "Usage: ./Convert-DERtoPEM.sh domain.crt"
        echo "Output: domain.crt.pem"
        echo
        exit
fi

if [[ -f "$1" ]]
then
        openssl x509 -inform der -in "$1" -out "$1".pem

        echo
        echo -n "Output: "
        echo "$1.pem"
        echo
else
        echo
        echo "<<ERROR>>"
        echo "One or more file(s) not exists:"
        if [[ -f "$1" ]]
        then
                echo $1
        fi
        echo
        echo 
fi
