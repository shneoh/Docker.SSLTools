#Will ask to assign a passphrase for JKS creation.
#Try not to use symbols.
openssl pkcs12 -export -out targetFileName.pfx -inkey privateKey.key -in domain_certificate.cer -certfile ca-bundle_certificate.cer