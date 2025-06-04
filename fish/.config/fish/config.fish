# === env variables ===
set -x NVM_DIR $HOME/.nvm
set -x ORG_HOME $HOME/org-roam
set -x PATH $PATH $HOME/go/bin $HOME/.config/emacs/bin $HOME/bin

# Ensure Homebrew is in PATH (Apple Silicon)
if test -d /opt/homebrew/bin
    set -x PATH /opt/homebrew/bin /opt/homebrew/sbin $PATH
end

# ===  NVM (Node Version Manager) Setup ===
# if test -s /opt/homebrew/opt/nvm/nvm.sh
#     source /opt/homebrew/opt/nvm/nvm.sh
# end
#
# if test -s /opt/homebrew/opt/nvm/etc/bash_completion.d/nvm
#     source /opt/homebrew/opt/nvm/etc/bash_completion.d/nvm
# end

# === interactive shell setup ===
if status is-interactive
    # --- abbreviations ---
    abbr --add nvimconf 'cd ~/.config/nvim; nvim'
    abbr --add garden 'cd ~/Documents/garden; nvim'

    abbr --add e 'emacs -nw'
    abbr --add c 'clear'
    abbr --add la 'eza --icons -lah --group-directories-first -1'
    abbr --add ll 'eza --icons -lh --group-directories-first -1 --no-user --long'
    abbr --add ls 'eza --icons --group-directories-first -1'
    abbr --add tree 'eza --icons --tree --group-directories-first'
    abbr --add cat 'bat'

    # --- keybinds ---
    bind \eh backward-word
    bind \ej down-or-search
    bind \ek up-or-search
    bind \el forward-word

    # --- tool inits ---
    zoxide init fish | source
    starship init fish | source
end
