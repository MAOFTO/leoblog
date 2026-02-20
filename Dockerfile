# LeoBlog — Simple static site
FROM dhi.io/nginx:1.28-alpine3.22

# Copy static files
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY posts/ /usr/share/nginx/html/posts/

# DHI nginx listens on 8080
EXPOSE 8080

CMD ["-g", "daemon off;"]
