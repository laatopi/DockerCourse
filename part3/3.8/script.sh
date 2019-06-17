#!/bin/bash
git clone $3
cd "$(basename "$1" .git)"
docker login -u $1 -p $2
docker build -t $1/scriptpush .
docker push $1/scriptpush
