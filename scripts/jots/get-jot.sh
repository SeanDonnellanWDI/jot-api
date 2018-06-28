#!/bin/bash

curl "http://localhost:4741/jots/${ID}" \
  --include \
  --request GET

echo
