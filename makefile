IMAGE_NAME = kschwank/bitcoin-lightning-docker
CONTAINER_NAME = lightningnode

image:
	docker build --no-cache -t ${IMAGE_NAME} docker/

run:
	docker run -ti --rm -v ${HOME}/.bitcoin-btc:/bitcoin --name=${CONTAINER_NAME} --user="${UID}:${GID}" ${IMAGE_NAME}

run-daemon:
	docker run -d --rm -v ${HOME}/.bitcoin-btc:/bitcoin --name=${CONTAINER_NAME} --user="${UID}:${GID}" ${IMAGE_NAME} /lightning/lightningd/lightningd -datadir=/bitcoin

clean:
	docker rm ${CONTAINER_NAME}

