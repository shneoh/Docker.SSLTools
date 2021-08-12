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


#To view the md5 hash of the modulus of the CSR:
echo -n "CSR : " 
openssl req -noout -modulus -in $1 | openssl md5

#To view the md5 hash of the modulus of the private key:
echo -n "KEY : " 
openssl rsa -noout -modulus -in $2 | openssl md5

#To view the md5 hash of the modulus of the certificate:
echo -n "CRT : " 
openssl x509 -noout -modulus -in $3 | openssl md5