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

if command -v pyenv 1>/dev/null 2>&1; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init --path)"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/temba/google-cloud-sdk/path.bash.inc' ]; then . '/Users/temba/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/temba/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/temba/google-cloud-sdk/completion.bash.inc'; fi

export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
