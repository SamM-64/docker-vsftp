# Documentation d'Utilisation du Projet vsftpd Dockerized

Ce projet propose une configuration Dockerisée du serveur FTP `vsftpd` à l'aide d'Alpine Linux. Suivez ces étapes pour déployer et utiliser le serveur FTP dans votre environnement.

## Étape 1 : Configuration du Cluster OVH Public Cloud (Si Applicable)

Si vous utilisez un cluster Kubernetes sur OVH Public Cloud, assurez-vous d'avoir le fichier kubeconfig configuré pour votre cluster.

## Étape 2 : Construction de l'Image Docker

Utilisez le fichier Dockerfile pour construire l'image Docker du serveur FTP `vsftpd`. Assurez-vous d'avoir Docker installé sur votre machine.

```bash
docker build -t nom_de_votre_image:tag .
```

## Étape 3 : Configuration avec Docker Compose
Utilisez le fichier docker-compose.yml pour orchestrer le service vsftpd. Cela définit les ports, les volumes et autres configurations.


Exécutez le service avec la commande suivante :

```bash
docker-compose up -d
```

## Étape 4 : Configuration et Démarrage du Serveur FTP
Utilisez le script vsftpd.sh pour configurer et démarrer le serveur FTP. Assurez-vous que le script est exécutable.

```bash
chmod +x vsftpd.sh
./vsftpd.sh
```

## Étape 5 : Configuration du Fichier vsftpd.conf
Le fichier de configuration vsftpd.conf définit les paramètres du serveur FTP. Assurez-vous de personnaliser les options en fonction de vos besoins.

## Étape 6 : Exécution du Projet en Local
Avec toutes les configurations en place, votre serveur FTP `vsftpd` Dockerisé devrait être opérationnel. Utilisez la ligne de commandes suivante pour vous connecter au serveur FTP en local :

```bash
ftp localhost 21
```

Saisissez vos informations d'identification (nom d'utilisateur et mot de passe) lorsque cela vous est demandé.

Une fois connecté au serveur FTP, utilisez la commande suivante pour transférer un fichier vers le serveur :

```bash
put chemin_local/mon_fichier.txt mon_fichier.txt
```
Assurez-vous de remplacer chemin_local/mon_fichier.txt par le chemin local complet de votre fichier et mon_fichier.txt par le nom souhaité sur le serveur FTP.

Pour vérifier le transfert, utilisez la commande suivante pour lister les fichiers sur le serveur FTP :

```bash
ls
```

Vous devriez voir le fichier que vous avez transféré.




