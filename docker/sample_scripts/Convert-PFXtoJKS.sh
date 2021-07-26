#Will ask to assign a password for JKS creation.
#Try not to use symbols.
keytool -importkeystore -srckeystore sourcePFXFileName.p12 -srcstoretype pkcs12 -destkeystore targetJKSFileName.jks -deststoretype JKS