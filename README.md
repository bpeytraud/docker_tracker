L'objectif de docker tracker est de créer une version restreinte de tuleap sous Docker.
Pour cela on a intallé dans les plugins que celui du tracker. Pour réaliser ces installations on utilise un script pour automatiser toute l'installation.
Le Dockerfile permet d'utiliser la commande systemctl mais aussi d'installer le serveur mysqld. Ainsi que de déplacer dans notre conteneur notre script au dossier voulu et avec les bons droits.
