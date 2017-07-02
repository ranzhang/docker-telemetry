FROM debian:stable-slim

ENV p /pipeline
WORKDIR $p

RUN apt-get update && apt-get -y install iputils-ping && apt-get -y install curl

COPY ./pipeline pipeline.bin
COPY ./pipeline.conf pipeline.conf
COPY ./metrics.json metrics.json
COPY ./dump.bin dump.bin

ENTRYPOINT ["/pipeline/pipeline.bin"]
CMD ["-config=/pipeline/pipeline.conf"]

