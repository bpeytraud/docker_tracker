#!/bin/bash

mysql_server="${mysql_server:-localhost}"

# Configuration de MySQL avec le mot de passe fourni par l'utilisateur
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_PASSWORD';"

# Configuration de Tuleap
/usr/share/tuleap/tools/setup.sh \
  --configure \
  --server-name="$TULEAP_SERVER_NAME" \
  --mysql-server="$mysql_server" \
  --mysql-password="$MYSQL_PASSWORD" \
  --assumeyes
