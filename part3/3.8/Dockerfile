FROM ubuntu:16.04

WORKDIR /app

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    git && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable" && \
    apt-get update && \
    apt-get install -y docker-ce docker-ce-cli containerd.io && \
    echo $'#!/bin/bash\ngit clone $3\ncd "$(basename "$3" .git)"\ndocker login -u $1 -p $2\ndocker build -t $1/scriptpush .\ndocker push $1/scriptpush' >script.sh && \
    chmod a+x ./script.sh

ENTRYPOINT [ "./script.sh" ]