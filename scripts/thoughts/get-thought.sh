#!/bin/bash

curl "https://jot-api.herokuapp.com/thoughts/${ID}" \
  --include \
  --request GET

echo
