FROM ubuntu:16.04

WORKDIR /app
COPY . /app

RUN apt-get update && apt-get install -y \
    curl ca-certificates git && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    git clone https://github.com/docker-hy/ml-kurkkumopo-frontend.git && \
    apt install -y nodejs && \
    npm install && \
    apt-get purge -y --auto-remove curl && \ 
    rm -rf /var/lib/apt/lists/* && \
    useradd -m app && \
    chown -hR app /app

FROM node

CMD ["npm","start"]