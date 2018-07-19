FROM debian:stable-slim

ENV p /pipeline
WORKDIR $p

RUN apt-get update && apt-get -y install iputils-ping && apt-get -y install curl

COPY ./pipeline ./pipeline.conf ./metrics.json ./dump.bin ./

ENTRYPOINT ["/pipeline/pipeline"]
CMD ["-config=/pipeline/pipeline.conf"]
