# Verwende das offizielle Nginx-Image als Basis
FROM nginx:alpine
# Setze das Arbeitsverzeichnis im Container
WORKDIR /usr/share/nginx/html
# Entferne alle Standarddateien von Nginx
RUN rm -rf ./*
# Kopiere die statischen Inhalte deiner Website in den Container
COPY . .
# Exponiere Port 80 für den Zugriff auf den Container
EXPOSE 80
# Starte Nginx im Vordergrund
CMD ["nginx", "-g", "daemon off;"]