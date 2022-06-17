#!/usr/bin/env bash

if [ -f ".env" ]; then
	ACCOUNT_USER=$(grep ACCOUNT_USER .env | cut -d '=' -f2)
	ACCOUNT_TOKEN=$(grep ACCOUNT_TOKEN .env | cut -d '=' -f2)
	# else, maybe in Github secrets...
fi

# Detail about github user
curl -i -u $ACCOUNT_USER:$ACCOUNT_TOKEN https://api.github.com/user

# Detail about github repo
#curl -i -H "Authorization: token "$GITHUB_TOKEN https://api.github.com/user/repos
#curl -i -H "Authorization: token "$GITHUB_TOKEN https://api.github.com/repos/noweh/test-github-api