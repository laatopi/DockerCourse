#!/bin/bash\n
git clone $3\n
cd "$(basename "$1" .git)"\n
docker login -u $1 -p $2\n
docker build -t $1/scriptpush .\n
docker push $1/scriptpush\n


echo $'#!/bin/bash\ngit clone $3\ncd "$(basename "$1" .git)"\ndocker login -u $1 -p $2\ndocker build -t $1/scriptpush .\ndocker push $1/scriptpush' >script.sh