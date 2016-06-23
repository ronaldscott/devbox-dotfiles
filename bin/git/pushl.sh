#!/bin/sh

if git config lastpass.uid >/dev/null 2>&1 && lpass show --username $(git config lastpass.uid) >/dev/null 2>&1; then
	if [ ! -f ~/.netrc ]; then
		touch ~/.netrc
		chmod 600 ~/.netrc
	fi
	
	echo -e "machine github.com login $(lpass show --username $(git config lastpass.uid)) password $(lpass show --password $(git config lastpass.uid))\n$(cat ~/.netrc)" > ~/.netrc
	echo -e "machine api.github.com login $(lpass show --username $(git config lastpass.uid)) password $(lpass show --password $(git config lastpass.uid))\n$(cat ~/.netrc)" > ~/.netrc

	git push "$@"

	sed -e "1,2d" ~/.netrc > ~/.netrc

	if [ "$(ls -nl ~/.netrc | awk '{print $5}')" == '0' ]; then
		rm ~/.netrc
	fi
else
	echo "pushl prerequisites unmet. Ensure you have:"
	echo " - installed lastpass-cli (see https://github.com/lastpass/lastpass-cli)"
	echo " - signed into lastpass-cli, e.g. 'lpass login [USERNAME]'"
       	echo " - set lastpass.uid, e.g. 'git config lastpass.uid [ID]'"
	echo "   (obtain this value from the output of 'lpass ls')"
fi
