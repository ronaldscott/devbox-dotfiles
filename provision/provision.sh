#!/bin/bash

# provision.sh

curl -s -L https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.profile.d/git-completion.bash
curl -s -L https://raw.githubusercontent.com/docker/docker/master/contrib/completion/bash/docker >> ~/.profile.d/docker-completion.bash
curl -s -L https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/bash/docker-compose > ~/.profile.d/docker-compose-completion.bash
npm completion >> ~/.profile.d/npm-completion.bash
