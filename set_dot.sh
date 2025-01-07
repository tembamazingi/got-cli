#!/bin/zsh
for dotfile in .aliases .aliases_code .aliases_git .aliases_runtimes .functions .git-prompt.sh .gitexcludes .runtimes .zprofile .zshrc;
do
	if [[ ! -h "$HOME/$dotfile" ]]; then
		echo -e "\nLinking $PWD/$dotfile"
		ln -s $PWD/$dotfile $HOME/$dotfile
	else
		echo -e "\n$dotfile already linked."
	fi
done

if [[ $OSTYPE == darwin* ]]; then
	if [[ ! -h "$HOME/.macos" ]]; then
		echo -e "\nLinking $PWD/.macos"
		ln -s $PWD/.macos $HOME/.macos
	else
		echo -e "\n$PWD/.macos already linked."
	fi
fi

exec $SHELL -l
echo -e "\nDone: dotfiles in place."
# END OF FILE
