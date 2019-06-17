FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    python wget ffmpeg python3-pip && \
    pip3 install --upgrade yle-dl && \
    apt-get purge -y --auto-remove python3-pip && \
    rm -rf /var/lib/apt/lists/* 

ENTRYPOINT ["yle-dl"]