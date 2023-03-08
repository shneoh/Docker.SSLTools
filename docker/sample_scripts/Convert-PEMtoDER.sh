#!/bin/sh

if [ $# -lt 1 ]
then
        echo
        echo "Convert PEM to DER format."
        echo "Usage: ./Convert-PEMtoDER.sh certificate.pem"
        echo "Output: certificate.pem.crt"
        echo
        exit
fi

if [[ -f "$1" ]]
then
        openssl x509 -outform der -in "$1" -out "$1".der

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


