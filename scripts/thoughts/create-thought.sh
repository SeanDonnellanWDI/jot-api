#!/bin/bash

curl "https://jot-api.herokuapp.com/thoughts" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "thought": {
      "title": "'"${TITLE}"'",
      "published": "'"${PUB_BOOL}"'"
    }
  }'

echo
