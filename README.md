# Projet Docker Tracker

Ce projet propose un Dockerfile pour déployer une instance Tuleap sur une base Almalinux. Il utilise systemd pour orchestrer les services et MySQL comme base de données.

## Contenu du Projet

1. **Dockerfile** : Fichier de configuration pour créer l'image Docker.

2. **script.sh** : Script Bash qui configure MySQL et Tuleap lors du démarrage du conteneur.

3. **setup-tuleap.service** : Fichier de service systemd pour lancer le script.sh au démarrage.

## Instructions d'utilisation

1. Clonez ce dépôt :
    ```bash
    git clone https://github.com/votre-utilisateur/docker_tracker.git
    cd docker_tracker
    ```

2. Créez l'image Docker :
    ```bash
    docker build -t docker_tracker .
    ```

3. Lancez le conteneur Docker :
    ```bash
    docker run --rm -t --name tuleap-container -v /sys/fs/cgroup:/sys/fs/cgroup:rw -v ./.env:/root/.env:ro --cap-add=sys_nice --mount type=tmpfs,destination=/run docker_tracker
    ```

4. Accédez à Tuleap dans votre navigateur à l'adresse : https://nom_de_votre_serveur.

## Configuration du .env

- **MYSQL_PASSWORD** : Mot de passe MySQL pour l'utilisateur root.
- **TULEAP_SERVER_NAME** : Nom du serveur Tuleap.

## Remarques

- Le script.sh configure MySQL avec le mot de passe fourni et configure Tuleap avec le nom de serveur spécifié.

- Le fichier setup-tuleap.service lance le script.sh au démarrage du conteneur.

---


