#!/bin/bash

curl "https://jot-api.herokuapp.com/thoughts" \
  --include \
  --request GET

echo
