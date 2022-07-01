
# time docker build -t question2 .
# docker run -e POSTGRES_HOST=localhost -e POSTGRES_DB=postgres_db -e POSTGRES_USER=postgres -e POSTGRES_PASS=123456 question2
# docker exec -it {CONTAINER_ID} cat /app/config.ini


FROM ubuntu:20.04

WORKDIR /testapp2

COPY config.ini.template .
COPY docker-entrypoint.sh /

# envsubst
RUN apt-get update; \
      apt-get install -y gettext && \ 
      chmod 755 /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["tail", "-f", "/dev/null"]