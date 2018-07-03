#!/bin/bash

curl "https://jot-api.herokuapp.com/thoughts/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "thought": {
      "title": "'"${TITLE}"'",
      "published": "'"${PUB_BOOL}"'"
    }
  }'

echo
