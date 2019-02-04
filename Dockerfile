FROM alpine

ENV SENTINEL_VERSION=0.9.0

WORKDIR /src

ENV PATH /src:$PATH

RUN wget https://releases.hashicorp.com/sentinel/${SENTINEL_VERSION}/sentinel_${SENTINEL_VERSION}_linux_amd64.zip
RUN unzip sentinel_${SENTINEL_VERSION}_linux_amd64.zip

ENTRYPOINT ["sentinel"]