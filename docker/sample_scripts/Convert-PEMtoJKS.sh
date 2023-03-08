#!/bin/sh

#Will ask to assign a password for JKS creation.
#Try not to use symbols.

if [ $# -lt 1 ]
then
        echo
        echo "Convert PEM to JKS."
        echo "Usage: ./Convert-PEMtoJKS.sh privateKey.key domain.crt ca-bundle.crt"
        echo "Output: certificate.pem.jks"
        echo
        exit
fi

if [[ -f "$1" ]]
then
        openssl pkcs12 -export -out "$2".jks -inkey "$1" -in "$2" -certfile "$3"

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



openssl pkcs12 -export -out outputFile.p12 -inkey privateKey.key -in domain_certificate.cer -certfile ca-bundle_certificate.cer