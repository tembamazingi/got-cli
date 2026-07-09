# Sourced by every zsh invocation (login, non-login, interactive, non-interactive).
# Non-interactive shells (e.g. Claude Code hooks, run via /bin/sh or non-interactive
# zsh) never source .zshrc, so `mise activate` never runs and mise-managed tools
# are missing from PATH. mise's shims dir works without activation, so put it here.
export PATH="$HOME/.local/share/mise/shims:$PATH"
# END OF FILE
