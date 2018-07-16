FROM kschwank/bitcoin-core-qt

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install autoconf automake build-essential git libtool libgmp-dev libsqlite3-dev python python3 net-tools zlib1g-dev

RUN git clone https://github.com/ElementsProject/lightning.git

RUN cd lightning && ./configure && make

VOLUME /bitcoin

CMD ["/lightning/lightningd/lightningd", "-datadir=/bitcoin"]

