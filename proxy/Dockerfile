# Image de base : nginx
FROM nginx:alpine

# Copier la configuration par défaut dans nginx
COPY default.conf /etc/nginx/conf.d/default.conf

# Copier le fichier HTML pour les erreurs backend not found
COPY backend-not-found.html /var/www/html/backend-not-found.html

# Copier le fichier de configuration du proxy
COPY proxy.conf /etc/nginx/includes/proxy.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]