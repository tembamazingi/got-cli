# INIT SCRIPT FOR STARSHIP
eval "$(starship init bash)"

# SET LOCALE.
export LANGUAGE=en_ZA.UTF-8
export LANG=en_ZA.UTF-8
export LC_ALL=en_ZA.UTF-8

# HISTORY: ERASE AND IGNORE DUPLICATE COMMANDS.
export HISTCONTROL=ignorespace:erasedups
export HISTCONTROL=ignoredups
export HISTSIZE=20000
export HISTFILESIZE=20000
export HISTTIMEFORMAT="%d/%m %H:%M "


# LOAD MAC-SPECIFIC ALIASES.
[[ -f "$HOME/.bash_macos" ]] && source "$HOME/.bash_macos"

# LOAD ALL-PURPOSE ALIASES.
[[ -f "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"

# LOAD CODE ALIASES.
[[ -f "$HOME/.bash_aliases_code" ]] && source "$HOME/.bash_aliases_code"

# LOAD GIT ALIASES.
[[ -f "$HOME/.bash_aliases_git" ]] && source "$HOME/.bash_aliases_git"

# LOAD FUNCTIONS.
[[ -f "$HOME/.bash_functions" ]] && source "$HOME/.bash_functions"

# LOAD HOSTS.
[[ -f "$HOME/.hosts" ]] && source "$HOME/.hosts"

export PATH="/usr/local/sbin:$PATH"


# LOAD GIT BRANCH INFO (IN WITHIN A REPO).
[[ -f "$HOME/.git-prompt.sh" ]] && source "$HOME/.git-prompt.sh"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"