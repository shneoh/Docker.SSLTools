#!/bin/sh
if [ $# -lt 1 ]
then
        echo
        echo "Get details of SSL certificate used in the website and port specificed."
        echo "Usage: ./Show-websiteSSL.sh website_url.com:port_number"
        echo "example: ./Show-websiteSSL.sh webnic.cc:443"
        echo
        exit
fi

#show website certificate details
openssl s_client -connect "$1"