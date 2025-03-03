#!/bin/zsh
dotfiles=(.aliases .aliases_code .aliases_git .aliases_runtimes .functions .git-prompt.sh .gitexcludes .runtimes .zprofile .zshrc)

for dotfile in "${dotfiles[@]}"; do
    echo "Removing old symlink for $dotfile."
    unlink "$HOME/$dotfile"

    echo "Linking $PWD/$dotfile to $HOME/$dotfile."
    ln -sf "$PWD/$dotfile" "$HOME/$dotfile"
done

if [[ $OSTYPE == darwin* ]]; then
    echo "Removing old symlink for .macos."
    unlink "$HOME/.macos"

    echo -e "\nLinking $PWD/.macos"
    ln -sf "$PWD/.macos" "$HOME/.macos"
fi

exec $SHELL -l

echo -e "\nFinished: dotfiles now in place."
# END OF FILE
