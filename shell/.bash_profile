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

# SET COLOURS.
BLUE="\[\033[1;34m\]"
GREEN="\[\033[0;32m\]"
NORMAL="\[\033[0m\]"
ORANGE="\[\033[0;33m\]"
RED="\[\033[0;31m\]"

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

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# BREW: PHP, MYSQL COMPOSER ETC
export PATH="$PATH:$HOME/.composer/vendor/bin"

export PS1="$RED[\A] $GREEN\u$NORMAL@\h $BLUE\W$ORANGE\$(__git_ps1) $NORMAL\$ "
# END OF FILE

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/temba/google-cloud-sdk/path.bash.inc' ]; then . '/Users/temba/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/temba/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/temba/google-cloud-sdk/completion.bash.inc'; fi
alias python=/usr/local/bin/python3.7
