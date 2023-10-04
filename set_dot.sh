#!/bin/zsh
for dotfile in .aliases .aliases_code .aliases_git .functions .git-prompt.sh .gitexcludes .zprofile .zshrc;
do
	if [[ ! -h "$HOME/$dotfile" ]]; then
		echo "Linking $PWD/$dotfile"
		ln -s $PWD/$dotfile $HOME/$dotfile
	else
		echo "$dotfile already linked."
	fi
done

if [[ $OSTYPE == darwin* ]]; then
	if [[ ! -h "$HOME/.macos" ]]; then
		echo "Linking $PWD/.macos"
		ln -s $PWD/.macos $HOME/.macos
	else
		echo "$PWD/.macos already linked."
	fi
fi

exec $SHELL -l
echo "Done: dotfiles in place."
# END OF FILE