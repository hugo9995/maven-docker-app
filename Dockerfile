FROM alpine:latest
RUN apk add openjdk11
RUN apk update
RUN apk upgrade --available &&  sync
RUN mkdir -p /app
COPY target/*jar /app/.
CMD ["/bin/sh","-c","java -jar /app/*.jar"]
