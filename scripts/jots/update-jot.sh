#!/bin/bash

curl "http://localhost:4741/jots/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "jot": {
      "name": "'"${NAME}"'",
      "content": "'"${CONTENT}"'",
      "active": "'"${BOOL}"'"
    }
  }'

echo
