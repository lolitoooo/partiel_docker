# Utiliser l'image officielle de Node.js
FROM node:18 AS build

# Créer et changer le répertoire de travail
WORKDIR /usr/src/app

# Copier les fichiers de dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le code local dans l'image du conteneur
COPY . .

# Construire le frontend
RUN npm run build

# Étape finale
FROM node:18

# Créer et changer le répertoire de travail
WORKDIR /usr/src/app

# Copier uniquement le répertoire dist de l'étape de build
COPY --from=build /usr/src/app/dist ./dist

# Copier les fichiers de dépendances pour la production
COPY package*.json ./

# Installer les dépendances de production
RUN npm install --production

# Copier le fichier server.cjs pour démarrer le serveur
COPY server.cjs ./

# Lancer le service web au démarrage du conteneur
CMD [ "node", "server.cjs" ]