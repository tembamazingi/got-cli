#!/bin/zsh
for dotfile in .aliases .aliases_code .aliases_git .functions .git-prompt.sh .gitexcludes .zprofile .zshrc;
	do
		[[ ! -h "$HOME/$dotfile" ]] && { echo "Linking $PWD/$dotfile"; ln -s $PWD/$dotfile $HOME/$dotfile; } || echo "$dotfile already linked.";
done

if [[ $OSTYPE == darwin* ]]; then

	[[ ! -h "$HOME/.macos" ]] && { echo "Linking $PWD/.macos"; ln -s $PWD/.macos $HOME/$dotfile; } || echo "$dotfile already linked.";

fi

exec $SHELL -l
echo "Done: dotfiles in place."
# END OF FILE
