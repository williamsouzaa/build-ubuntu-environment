#!/bin/bash
function configGitTerminal() {
echo "
if [ -e /usr/bin/git ]; then
	parse_git_branch() {
		git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
	}
	export PS1=\"\[\033[1;32m\]\u@\h:\[\033[1;34m\]\w\[\033[33m\]\\\$(parse_git_branch)\[\033[00m\]$ \"
fi
" >> /home/$USER/.bashrc
}