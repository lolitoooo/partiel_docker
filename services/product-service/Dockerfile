# Utiliser l'image officielle de Node.js
FROM node:18

# Créer et changer le répertoire de travail
WORKDIR /usr/src/app

# Copier les scripts d'initialisation
COPY init-products.sh /usr/src/app/scripts/init-products.sh

# Copier les fichiers de dépendances
COPY package*.json ./

# Installer les dépendances de production
RUN npm install

# Copier le code local dans l'image du conteneur
COPY . .

# Lancer le service web au démarrage du conteneur
CMD [ "node", "src/app.js" ]
