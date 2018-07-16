#!/bin/bash
mkdir -p ${HOME}/.bitcoin-btc
docker run -ti --rm -v ${HOME}/.bitcoin-btc:/bitcoin --name="lightningnode" --user="${UID}:${GID}" kschwank/bitcoin-lightningnode

