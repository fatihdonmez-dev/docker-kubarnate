# time docker build -t registry.dev.rtmnt.net/turkuvaz-ad-soyad:levent-duymus --build-arg NAME=levent --build-arg SURNAME=duymus .
# docker login registry.dev.rtmnt.net
# docker push registry.dev.rtmnt.net/turkuvaz-ad-soyad:levent-duymus 
# docker run registry.dev.rtmnt.net/turkuvaz-ad-soyad:levent-duymus cat /opt/turkuvaz/name.txt

FROM ubuntu:18.04

ARG NAME=unspecified
ARG SURNAME=unspecified

RUN mkdir -p /opt/turkuvaz; \
    echo ${NAME} > /opt/turkuvaz/name.txt; \
    echo ${SURNAME} > /opt/turkuvaz/surname.txt