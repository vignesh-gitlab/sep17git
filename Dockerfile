FROM httpd:latest
LABEL Name = "vignesh"
COPY /index.html /usr/local/apache2/htdocs/
