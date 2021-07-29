#verify CSR / KEY / Domain CRT
#if the output result same, means matched.
#if only domain certificate not match, need to reissue domain certificate.
#if non matched, regenerate CSR and PrivateKey then reissue application again.

#To view the md5 hash of the modulus of the private key:
echo -n "KEY : " 
openssl rsa -noout -modulus -in hualientour.com.tw.pem | openssl md5

#To view the md5 hash of the modulus of the CSR:
echo -n "CSR : " 
openssl req -noout -modulus -in hualientour.com.tw.csr | openssl md5

#To view the md5 hash of the modulus of the certificate:
echo -n "CRT : " 
openssl x509 -noout -modulus -in 525925741.crt | openssl md5