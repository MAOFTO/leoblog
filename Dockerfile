# LeoBlog — Simple static site
FROM nginx:alpine

# Remove default nginx content and copy our files
RUN rm -rf /usr/share/nginx/html/*

# Copy static files
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY posts/ /usr/share/nginx/html/posts/

# Ensure readable permissions
RUN chmod -R 755 /usr/share/nginx/html

EXPOSE 80
