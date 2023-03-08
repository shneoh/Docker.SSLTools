#!/bin/sh

if [ $# -lt 3 ]
then
        echo
        echo "Convert CER to PFX/P12 format."
        echo "Usage: ./Convert-CERtoPFX.sh privateKey.key domain.crt ca-bundle.crt"
        echo "Output: domain.crt.pfx"
        echo
        exit
fi

if [[ -f "$1" && -f "$2" && -f "$3" ]]
then
        #Will ask to assign a passphrase for JKS creation.
        #Try not to use symbols.

        openssl pkcs12 -export -out "$2".pfx -inkey "$1" -in "$2" -certfile "$3"
        echo
        echo -n "Output: "
        echo "$2.pfx"
        echo
else
        echo
        echo "<<ERROR>>"
        echo "One or more file(s) not exists:"
        if [[ -f "$1" ]]
        then
                echo $1
        fi
        if [[ -f "$2" ]]
        then
                echo $2
        fi
        if [[ -f "$3" ]]
        then
                echo $3
        fi
        echo
        echo 
fi
