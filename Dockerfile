FROM httpd:latest
LABEL Name = "vignesh"
COPY /newfile /usr/local/apache2/htdocs/
