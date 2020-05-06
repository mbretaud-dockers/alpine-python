FROM python:3.8.2-alpine3.11

# ARGUMENTS
ARG ALPINE_VERSION=3.11
ARG PYTHON_VERSION=3.8

# VERSIONS
ENV ALPINE_VERSION=$ALPINE_VERSION
ENV PYTHON_VERSION=$PYTHON_VERSION
#  -> Check the version : https://www.python.org/ftp/python/

ENV PACKAGES="\
        bash \
    "
ENV VIRTUAL_PACKAGES="\
        .build-deps \
        build-base \
        gcc \
        wget \
        git \
        wget \
        curl \
    "

# PATHS
ENV PYTHON_PATH=/usr/local/bin/
ENV PATH="/usr/local/lib/python$PYTHON_VERSION/bin/:/usr/local/lib/pyenv/versions/$PYTHON_VERSION/bin:${PATH}"

RUN set -ex ;\
    # find MAJOR and MINOR alpine versions based on $ALPINE_VERSION ;\
    export ALPINE_MAJOR_VERSION="$(echo ${ALPINE_VERSION} | cut -d'.' -f1)" ;\
    export ALPINE_MINOR_VERSION="$(echo ${ALPINE_VERSION} | cut -d'.' -f1).$(echo ${ALPINE_VERSION} | cut -d'.' -f2)" ;\

    # apk install packages ;\
    echo "http://dl-cdn.alpinelinux.org/alpine/v${ALPINE_MINOR_VERSION}/main" >> /etc/apk/repositories ;\
    apk update \
	  && apk --no-cache add $PACKAGES \
      && apk add --virtual $VIRTUAL_PACKAGES

CMD ["bash"]