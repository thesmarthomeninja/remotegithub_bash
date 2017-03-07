#!/bin/bash

# Variables
token='Github Token'

# Update this with your own info
owner='Your github username'
repo='The name of your repo'
fileName='The name of your file'
url='https://api.github.com/repos/$owner/$repo/contents/$fileName'

# Command To Run
bash <(curl -H "Content-Type: application/json" -H "Authorization: token $token" $url | jq '.content' | sed -e 's/\\n/ /g' -re 's/"//g' | base64 --decode)
