export HOMEBREW_PREFIX="$(brew --prefix)"
export HOMEBREW_OPT="$HOMEBREW_PREFIX/opt"
export HOMEBREW_SHARE="$HOMEBREW_PREFIX/share"
export EDITOR="vim"
export VISUAL="vim"
export PYTHONWARNINGS=ignore
export TERM="xterm-256color"

source ~/.zshrc-path
source ~/.zprofile

# Initialize Zsh completion system
export FPATH="$HOMEBREW_SHARE/zsh-completions:$FPATH"
autoload -Uz compinit
compinit
# Ensure right arrow accepts current selection in fzf-tab
zstyle ':fzf-tab:*' fzf-bindings 'right:accept'
source ~/.fzf-tab/fzf-tab.plugin.zsh

# Zsh Autosuggestions
source "$HOMEBREW_SHARE/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Load prompt logic
source ~/.zshrc-ps1

# Keybindings
source ~/.zshrc-keybindings

# Syntax Highlighting
source ~/.zshrc-custom-syntax-highlighting
source "$HOMEBREW_SHARE/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# Misc
source ~/.zshrc-aliases
source ~/.zshrc-flags
source ~/.zshrc-utils
source ~/.zshrc-instahyre