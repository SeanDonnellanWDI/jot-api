#!/bin/bash

curl "http://localhost:4741/jots" \
  --include \
  --request POST \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "jot": {
      "name": "'"First Jot"'",
      "content": "'"Hello World, I am a Jot"'",
      "active": "'"true"'"
    }
  }'

echo
