#!/bin/bash

# Variables
token='Github Token'
url='https://api.github.com/repos/chipoglesby/bashAndGithub/contents/command.sh'

# Command To Run
bash <(curl -H "Content-Type: application/json" -H "Authorization: token $token" $url | jq '.content' | sed -e 's/\\n/ /g' -re 's/"//g' | base64 --decode)
