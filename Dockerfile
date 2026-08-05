FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY og-image.jpg /usr/share/nginx/html/og-image.jpg
COPY images/ /usr/share/nginx/html/images/
COPY fonts/ /usr/share/nginx/html/fonts/
EXPOSE 80
