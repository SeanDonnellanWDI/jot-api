#!/bin/bash

curl "http://localhost:4741/jots" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "jot": {
      "name": "'"${NAME}"'",
      "content": "'"${CONTENT}"'",
      "active": "'"${BOOL}"'"
    }
  }'

echo
