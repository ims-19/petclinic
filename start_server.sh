#!/bin/bash

auth=$IAST_AUTH
orgid=$IAST_ORG_ID
apikey=$IAST_API_KEY


if [[ -z "$auth"  ]]; then
  java -jar spring-petclinic-*.jar
else
  curl -X GET https://ce.contrastsecurity.com/Contrast/api/ng/"$orgid"/agents/default/JAVA \
    -H "Authorization: $auth" -H "API-Key: $apikey" -H "Accept: application/json" -OJ &&
  java -jar spring-petclinic-*.jar
fi
