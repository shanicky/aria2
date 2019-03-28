FROM alpine:edge

RUN apk update && \
	mkdir -p /opt/aria2 && \
	apk add --no-cache --update aria2

ADD run.sh /opt/aria2/run.sh
RUN chmod +x /opt/aria2/run.sh

WORKDIR /
VOLUME ["/data"]
VOLUME ["/conf"]

CMD ["/opt/aria2/run.sh"]
