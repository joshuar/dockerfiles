ES_VERSION=1.6.0
LS_VERSION=1.5.2
KB_VERSION=4.1.1

.PHONY: all elastic elasticsearch logstash kibana

all: elastic

elastic: elasticsearch logstash kibana

elasticsearch:
	cd elasticsearch && tar -czh . | docker build -t joshuar/elasticsearch:$(ES_VERSION) -

logstash:
	cd logstash && tar -czh . | docker build -t joshuar/logstash:$(LS_VERSION) -

kibana:
	cd kibana4 && docker build -t joshuar/kibana:$(KB_VERSION) .