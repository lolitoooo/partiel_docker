# Étape de build
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

# Étape de production
FROM nginx:alpine

# Copier les fichiers construits depuis l'étape de build
COPY --from=build /usr/src/app/dist /usr/share/nginx/html

# Copier le fichier de configuration Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Exposer le port 80
EXPOSE 80

# Lancer Nginx
CMD ["nginx", "-g", "daemon off;"]