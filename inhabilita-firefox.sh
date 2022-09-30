#!/bin/bash
#Autor: Òscar Herrán Morueco
#Capar firefox
root_check()
{
if [ "$(id -u)" != "0" ]; then
	whiptail --title "Error!" \
    --msgbox "Heu d'executar aquest script com a root (sudo) > ./nomscript.sh" 10 30
	exit 1
fi
capa_firefox
}
capa_firefox(){
mkdir /etc/firefox/policies
echo '{' > /etc/firefox/policies/policies.json
echo ' "policies": {' >> /etc/firefox/policies/policies.json
echo '   "WebsiteFilter": {' >> /etc/firefox/policies/policies.json
echo '      "Block": ["<all_urls>"]' >> /etc/firefox/policies/policies.json
echo '    }' >> /etc/firefox/policies/policies.json
echo '  }' >> /etc/firefox/policies/policies.json
echo '}' >> /etc/firefox/policies/policies.json
echo "Ha finalitzat l'script!"
}
root_check
