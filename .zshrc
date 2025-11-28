# Enable prompt substitution
setopt PROMPT_SUBST
git_info() {
  local branch dirty
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null) || return
  dirty=$(git diff --quiet 2>/dev/null || echo '*')
  echo "$branch$dirty"
}
PS1='%F{green}%*%f %F{yellow}%~%f %F{blue}$(git_info)%f'$'\n''> '

export VISUAL=zed
export EDITOR="zed --wait"
export CLICOLOR=1

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add custom aliases
alias ll='ls -alh'
# PATH
export PATH="$HOME/bin:$PATH"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/johstr/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/johstr/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/johstr/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/johstr/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# pnpm
export PNPM_HOME="/Users/johstr/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
