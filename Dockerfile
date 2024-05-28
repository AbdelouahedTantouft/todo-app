#Utiliser l'image de base Node.js version 12-alpine
FROM node:12-alpine
# Définir le répertoire de travail à /app 
WORKDIR /app
#Copier tout le contenu du répertoire local dans le répertoire /app de l'image
COPY . .
#installer les dépendances en mode production
RUN yarn install --production
#Exécuter l'application
CMD ["node","/app/src/index.js]
