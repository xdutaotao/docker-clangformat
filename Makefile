DOCKER=docker
REPOSITORY?=jsdoitao/docker-clangformat
TAG?=latest

all:
	@echo ""
	@echo "Commands:"
	@echo "  make image : build the docker image"

image:
	@echo "Building mosquitto image"
	${DOCKER} build --no-cache -t ${REPOSITORY}:${TAG} .

