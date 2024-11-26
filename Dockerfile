FROM mysql:latest 

ENV MYSQL_ROOT_PASSWORD=root@123
ENV MYSQL_DATABASE=reservation
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=root@123

COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306