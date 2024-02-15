#!/bin/bash

# Configuration de MySQL
systemctl enable mysqld
systemctl start mysqld

# Demande à l'utilisateur d'entrer le mot de passe MySQL
read -s -p "Entrez le mot de passe MySQL pour l'utilisateur root : " mysql_password
echo

# Demande à l'utilisateur d'entrer le nom du serveur Tuleap
read -p "Entrez le nom du serveur Tuleap : " tuleap_server_name

# Configuration de MySQL avec le mot de passe fourni par l'utilisateur
mysqladmin -u root -p"$mysql_password" password "$mysql_password"

# Configuration de Tuleap
/usr/share/tuleap/tools/setup.sh \
  --configure \
  --server-name="$tuleap_server_name" \
  --mysql-server=localhost \
  --mysql-password="$mysql_password"
