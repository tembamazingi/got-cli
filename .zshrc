# HISTORY SIZE SETTINGS.
export HISTFILESIZE=5000000
export HISTSIZE=5000000
export SAVEHIST=$HISTSIZE
export HISTFILE=~/.histfile
export CLICOLOR=1
export TERM=xterm-256color


# APPEND TO HISTORY IMMEDIATELY & ADD TIMESTAMP TO ENTRIES.
setopt appendhistory
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
export HISTTIMEFORMAT="[%F %T] "
setopt EXTENDED_HISTORY

# REMOVE DUPLICATES FROM HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS

export PATH="$HOME/.local/bin:$PATH"

# LOAD RUNTIMES.
[[ -f "$HOME/.runtimes" ]] && source "$HOME/.runtimes"

# LOAD ALL-PURPOSE ALIASES.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# LOAD GIT BRANCH INFO (IN WITHIN A REPO).
[[ -f "$HOME/.git-prompt.sh" ]] && source "$HOME/.git-prompt.sh"

# LOAD GIT ALIASES.
[[ -f "$HOME/.aliases_git" ]] && source "$HOME/.aliases_git"

# LOAD RUNTIME ALIASES.
[[ -f "$HOME/.aliases_runtimes" ]] && source "$HOME/.aliases_runtimes"

# LOAD FUNCTIONS.
[[ -f "$HOME/.functions" ]] && source "$HOME/.functions"

# LOAD MAC-SPECIFIC ALIASES.
[[ -f "$HOME/.macos" ]] && source "$HOME/.macos"

# LOAD ALIASES FOR CLOUD SERVICES.
[[ -f "$HOME/.cloud" ]] && source "$HOME/.cloud"

# LOAD ALIASES FOR AI AGENTS.
[[ -f "$HOME/.agent" ]] && source "$HOME/.agent"

# https://github.com/Homebrew/homebrew-command-not-found/
HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
if [ -f "$HB_CNF_HANDLER" ]; then
source "$HB_CNF_HANDLER";
fi

# INIT SCRIPTS FOR STARSHIP
eval "$(starship init zsh)"
# END OF FILE
