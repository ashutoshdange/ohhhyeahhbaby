FROM ubuntu
RUN sudo apt-get update
RUN sudo apt install nginx
RUN sudo systemctl start nginx
RUN sudo systemctl enable nginx
RUN sudo rm -rf /var/www/html/*
COPY ./index.html /usr/share/nginx/html
EXPOSE 80
