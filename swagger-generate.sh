#!/bin/sh
# generates swift code from swagger

wget https://raw.githubusercontent.com/matchmore/alps-api/master/src/main/resources/alps-core.yaml
swagger-codegen generate -c ./swagger-config.json -l swift3 -i ./alps-core.yaml
rm -f alps-core.yaml