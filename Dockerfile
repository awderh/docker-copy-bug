FROM alpine
RUN mkdir /usr/local/app
WORKDIR /usr/local/app
COPY a /usr/local/app/

