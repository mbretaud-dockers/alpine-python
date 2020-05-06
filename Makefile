CURRENT_DIR = $(shell pwd)
DOCKER_CONTAINER_NAME=alpine-python
ALPINE_VERSION=3.11
PYTHON_VERSION=3.8

buildArgs=--build-arg ALPINE_VERSION=$(ALPINE_VERSION) --build-arg PYTHON_VERSION=$(PYTHON_VERSION)
containerName=$(DOCKER_CONTAINER_NAME)
containerPublish=
containerVolumes=
containerImage=$(DOCKER_CONTAINER_NAME):$(ALPINE_VERSION)

$(info ############################################### )
$(info # )
$(info # Environment variables )
$(info # )
$(info ############################################### )
$(info CURRENT_DIR: $(CURRENT_DIR))
$(info DOCKER_CONTAINER_NAME: $(DOCKER_CONTAINER_NAME))
$(info ALPINE_VERSION: $(ALPINE_VERSION))

$(info )
$(info ############################################### )
$(info # )
$(info # Parameters )
$(info # )
$(info ############################################### )
$(info buildArgs: $(buildArgs))
$(info containerName: $(containerName))
$(info containerPublish: $(containerPublish))
$(info containerVolumes: $(containerVolumes))
$(info containerImage: $(containerImage))
$(info )

include $(CURRENT_DIR)/make-commons-docker.mk
