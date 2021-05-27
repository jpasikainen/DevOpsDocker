#! /bin/bash

git clone https://gitlab.com/jallbrit/bonsai.sh.git
mv bonsai.sh bonsai
docker build -t bonsai .
docker login
docker tag bonsai jpasikainen/bonsai
docker push jpasikainen/bonsai
