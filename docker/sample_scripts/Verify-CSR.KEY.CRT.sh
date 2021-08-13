#verify CSR / KEY / Domain CRT
#if the output result same, means matched.
#if only domain certificate not match, need to reissue domain certificate.
#if non matched, regenerate CSR and PrivateKey then reissue application again.

if [ $# -lt 3 ]
then
        echo
        echo "Verify CSR / KEY / Domain CRT"
        echo "Usage: ./Verify-CSR.KEY.CRT.sh csr_filename.csr privateKey_filename.key domain.crt"
        echo
        exit
fi


if [[ -f "$1" && -f "$2" && -f "$3" ]]
then
    #To view the md5 hash of the modulus of the CSR:
    echo -n "CSR : " 
    openssl req -noout -modulus -in "$1" | openssl md5

    #To view the md5 hash of the modulus of the private key:
    echo -n "KEY : " 
    openssl rsa -noout -modulus -in "$2" | openssl md5

    #To view the md5 hash of the modulus of the certificate:
    echo -n "CRT : " 
    openssl x509 -noout -modulus -in "$3" | openssl md5
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