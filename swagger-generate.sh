#!/bin/sh
# generates swift code from swagger
# for custom yaml pass url to it as a first parameter

custom_url=$1

if [ -z $custom_url ]; then
    custom_url="https://raw.githubusercontent.com/matchmore/alps-api/master/src/main/resources/alps-core.yaml"
fi
wget $custom_url

rm -fr ./ALPS
swagger-codegen generate -c ./swagger-config.json -l swift4 -i ./alps-core.yaml
rm -f alps-core.yaml
