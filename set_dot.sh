#!/bin/bash
OS="$(uname -s)"
scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

dotfiles='.git-prompt.sh .gitexcludes'
dotfiles="$dotfiles .bash_aliases .bash_aliases_code .bash_aliases_git .bash_functions .bash_profile";
[[ "$OS" = "Darwin" ]] && dotfiles="$dotfiles .bash_macos";

for dotfile in $dotfiles
	do
		[[ ! -h "$HOME/$dotfile" ]] && { echo "Linking $dotfile"; ln -s $scriptdir/$dotfile ~/$dotfile; } || echo "$dotfile already linked.";
done

echo "Updating host entries."
[[ -s "$scriptdir/.cloud" ]] && sudo sh -c "cat $scriptdir/.cloud >> /etc/hosts";

exec $SHELL -l
echo "Done: dotfiles in place."
# END OF FILE
