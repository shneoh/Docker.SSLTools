#Will ask to assign a password for JKS creation.
#Try not to use symbols.
openssl pkcs12 -export -out outputFile.p12 -inkey privateKey.key -in domain_certificate.cer -certfile ca-bundle_certificate.cer