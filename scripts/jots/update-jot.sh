#!/bin/bash

curl "http://localhost:4741/jots/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "jot": {
      "name": "'"First Jot"'",
      "content": "'"Hello World, I am a Jot. I have been updated via localhost curl scripts"'",
      "active": "'"true"'"
    }
  }'

echo
