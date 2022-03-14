FROM debian:bullseye

WORKDIR /gen

RUN apt-get update && apt-get install -y mosquitto-clients

COPY gen.sh /gen/gen.sh
RUN chmod +x /gen/gen.sh

ENTRYPOINT ["/gen/gen.sh"]