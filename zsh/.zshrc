export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export ORG_HOME="$HOME/org-roam"
export PATH=$PATH:$HOME/go/bin:~/.config/emacs/bin:$HOME/bin:/opt/homebrew/bin

alias nvimconf="cd ~/.config/nvim && nvim" 
alias garden="cd ~/Documents/garden && nvim"

alias e='emacs -nw'
alias c='clear'
alias la='eza --icons -lah --group-directories-first -1'
alias ll='eza --icons -lh --group-directories-first -1 --no-user --long'
alias ls='eza --icons --group-directories-first -1'
alias tree='eza --icons --tree --group-directories-first'
alias cat='bat'

bindkey "\eh" backward-word
bindkey "\ej" down-line-or-history
bindkey "\ek" up-line-or-history
bindkey "\el" forward-word

# eval "$(zoxide init zsh --cmd cd)"
