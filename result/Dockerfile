# Use official node image (tag 10-slim)
FROM node:10-slim

# Set the container application directory to /app
WORKDIR /app

# ~~~ Installation des dépendances ~~~

# Copy package*.json from the current folder to the current folder in the container
COPY package*.json ./

# Install nodemon globally and clean npm cache
RUN npm install -g nodemon \
    && npm cache clean --force

# ~~~ Installation des sources ~~~

# Copy the current folder (of the project) to the current folder in the container
COPY . .

# Install project dependencies cleanly
RUN npm ci

# ~~~ Exécution de l'application ~~~

# Set the environment variable PORT to 80
ENV PORT=80

# Make port 80 available for links and/or publish
EXPOSE 80

# Define the command "nodemon server.js" to be run when launching the container
CMD ["nodemon", "server.js"]
