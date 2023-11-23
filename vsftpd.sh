#!/bin/sh

# Créer le répertoire sécurisé pour vsftpd si nécessaire
mkdir -p /var/run/vsftpd/empty

# Définir le mot de passe de l'utilisateur sam à partir de la variable d'environnement
if [ -n "$PASSWORD" ]; then
    echo "sam:$PASSWORD" | chpasswd
fi

# Démarrer vsftpd
exec /usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf







