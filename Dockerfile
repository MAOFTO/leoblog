# LeoBlog — Simple static site
FROM nginx:alpine

# Copy static files
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY posts/ /usr/share/nginx/html/posts/

EXPOSE 80
