FROM debian:latest
WORKDIR /app
COPY index.html /app/
RUN apt-get update && apt-get install -y apache2
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]
