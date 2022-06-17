#!/usr/bin/env bash

if [ -f ".env" ]; then
	GITHUB_USER=$(grep GITHUB_USER .env | cut -d '=' -f2)
	GITHUB_TOKEN=$(grep GITHUB_TOKEN .env | cut -d '=' -f2)
	# else, maybe in Github secrets...
fi

# Detail about github user
curl -i -u $GITHUB_USER:$GITHUB_TOKEN https://api.github.com/user

# Detail about github repo
#curl -i -H "Authorization: token "$GITHUB_TOKEN https://api.github.com/user/repos
#curl -i -H "Authorization: token "$GITHUB_TOKEN https://api.github.com/repos/noweh/test-github-api