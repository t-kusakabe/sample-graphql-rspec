FROM mysql:8.0.29

ENV MYSQL_USER=root
ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes

COPY ./docker/mysql/init/init.sql /docker-entrypoint-initdb.d/init.sql
