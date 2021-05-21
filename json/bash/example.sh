#!/bin/bash

curl -X GET -k $URL | jq '.details'
curl -X GET -k $URL | jq '.details[0].status'
