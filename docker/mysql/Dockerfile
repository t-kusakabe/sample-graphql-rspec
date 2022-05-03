FROM mysql:8.0.29

ENV MYSQL_ROOT_PASSWORD=root

COPY ./docker/mysql/init/init.sql /docker-entrypoint-initdb.d/init.sql
