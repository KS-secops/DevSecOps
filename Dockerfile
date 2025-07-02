FROM node:16-alpine

# Créer le dossier de travail dans le conteneur
WORKDIR /usr/src/app

# Copier package.json et package-lock.json pour installer les dépendances
COPY package*.json ./

# Installer les dépendances npm
RUN npm install

# Copier le reste des fichiers de l’application
COPY . .

# Exposer le port sur lequel l’application écoute
EXPOSE 3000

# Commande pour démarrer l’application
CMD ["npm", "start"]
