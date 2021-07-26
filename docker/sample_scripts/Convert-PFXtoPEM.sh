#You can add -nocerts to only output the private key 
# or add -nokeys to only output the certificates.
# Output 2 files => PEM + Key
openssl pkcs12 -in keyStore.pfx -out domain_certificate.pem -nodes