# Utiliser une image Alpine Linux pour sa légèreté
FROM alpine:3.14

# Installer vsftpd
RUN apk add --no-cache vsftpd

# Ajouter l'utilisateur sam sans mot de passe (il sera défini à la première exécution)
RUN adduser -D sam

# Copier les configurations et les scripts
COPY vsftpd.conf /etc/vsftpd/
COPY vsftpd.sh /usr/sbin/vsftpd.sh
COPY vsftpd.chroot_list /etc/vsftpd/

# Fixer les permissions pour le fichier chroot_list
RUN chmod 644 /etc/vsftpd/vsftpd.chroot_list

# Exposer le port FTP standard
EXPOSE 21

# Les ports passifs pour les transferts de données (selon votre configuration)
EXPOSE 40000-40100

# Démarrer le script vsftpd.sh
CMD ["/usr/sbin/vsftpd.sh"]















