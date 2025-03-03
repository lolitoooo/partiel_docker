FROM mongo:4.4.24-focal

# Supprimer les fichiers inutiles pour réduire la taille
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Définir le point d’entrée
ENTRYPOINT ["mongo", "--bind_ip", "0.0.0.0"]
