#!/bin/bash

# Demande à l'utilisateur d'entrer le mot de passe MySQL
read -s -p "Entrez le mot de passe MySQL pour l'utilisateur root : " mysql_password
echo

# Demande à l'utilisateur d'entrer le nom du serveur Tuleap
read -p "Entrez le nom du serveur Tuleap : " tuleap_server_name

# Demande à l'utilisateur d'entrer le nom du serveur mysql serveur
read -p "Entrez le nom du serveur mysql : " mysql_server

#mysql_server="${mysql_server:-localhost}"

# Configuration de MySQL avec le mot de passe fourni par l'utilisateur
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$mysql_password';"

# Configuration de Tuleap
/usr/share/tuleap/tools/setup.sh \
  --configure \
  --server-name="$tuleap_server_name" \
  --mysql-server=$mysql_server \
  --mysql-password="$mysql_password"
  --assumeyes
