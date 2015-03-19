FROM node:0.12-slim
MAINTAINER Markus Dulghier <markus@dulghier.com>

RUn apt-get -yqq update && apt-get -yqq install wget

RUN wget https://download.elasticsearch.org/kibana/kibana/kibana-4.0.1-linux-x64.tar.gz -O /tmp/kibana.tar.gz && \
	tar -xf /tmp/kibana.tar.gz -C /tmp && \
	cp -r /tmp/kibana-4.0.1-linux-x64 /opt/kibana

VOLUME /opt/kibana/config
EXPOSE 5601

CMD ["/opt/kibana/bin/kibana"]
