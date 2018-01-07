FROM ubuntu:16.04
MAINTAINER Andre Periera andrespp@gmail.com

RUN 	apt-get update && apt-get install -y software-properties-common && \
	add-apt-repository -y ppa:ethereum/ethereum-qt && \
	add-apt-repository -y ppa:ethereum/ethereum && \
	apt-get update && apt-get install -y cpp-ethereum

VOLUME ["/root/.ethash"]

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["run"]
