#!/bin/zsh
dotfiles=(.agent .aliases .aliases_git .aliases_runtimes .cloud .functions .git-prompt.sh .gitexcludes .runtimes .zprofile .zshrc)

echo -n "\033[38;5;160m\n🗑️ Removing symlinks to outdated dotfiles:\033[0m"
for dotfile in "${dotfiles[@]}"; do

    unlink "$HOME/$dotfile"

    echo -n "\033[38;5;160m $dotfile\033[0m"    

done

echo "\n\n✅ Done: symlinks removed."

echo -n "\033[38;5;29m\n Creating symlinks to the latest dotfiles:\033[0m"
for dotfile in "${dotfiles[@]}"; do

    ln -sf "$PWD/$dotfile" "$HOME/$dotfile"

    echo -n "\033[38;5;29m $dotfile\033[0m"    

done

if [[ $OSTYPE == darwin* ]]; then

    unlink "$HOME/.macos"
    ln -sf "$PWD/.macos" "$HOME/.macos"

    echo -n "\033[38;5;29m [OS-specific: .macos]\033[0m"
fi

echo "\n\n✅ Done: dotfiles updated.\n"

exec $SHELL -l

# END OF FILE