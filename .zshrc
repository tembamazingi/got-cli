# FIG PRE BLOCK. KEEP AT THE TOP OF THIS FILE.
[[ -f "$HOME/.fig/shell/profile.pre.bash" ]] && builtin source "$HOME/.fig/shell/profile.pre.bash"

# LOAD ALL-PURPOSE ALIASES.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# LOAD CODE ALIASES.
[[ -f "$HOME/.aliases_code" ]] && source "$HOME/.aliases_code"

# LOAD GIT ALIASES.
[[ -f "$HOME/.aliases_git" ]] && source "$HOME/.aliases_git"

# LOAD FUNCTIONS.
[[ -f "$HOME/.functions" ]] && source "$HOME/.functions"

# LOAD GIT BRANCH INFO (IN WITHIN A REPO).
[[ -f "$HOME/.git-prompt.sh" ]] && source "$HOME/.git-prompt.sh"

# LOAD MAC-SPECIFIC ALIASES.
[[ -f "$HOME/.macos" ]] && source "$HOME/.macos"

# JETBRAINS TOOLBOX.
export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"

# HISTORY SIZE.
export HISTFILESIZE=5000000
export HISTSIZE=5000000
export SAVEHIST=$HISTSIZE
export HISTFILE=~/.histfile

# APPEND TO HISTORY IMMEDIATELY AND ADD TIMESTAMP TO ENTRIES.
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

# INIT SCRIPTS FOR HOMEBREW AND STARSHIP
eval "$(/opt/homebrew/bin/brew shellenv)"

eval "$(starship init zsh)"

source "$(brew --prefix asdf)/libexec/asdf.sh"
eval "$(asdf exec direnv hook zsh)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"

