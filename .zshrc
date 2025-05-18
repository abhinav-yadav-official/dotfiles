export HOMEBREW_PREFIX="$(brew --prefix)"
export HOMEBREW_OPT="$HOMEBREW_PREFIX/opt"
export HOMEBREW_SHARE="$HOMEBREW_PREFIX/share"
export EDITOR="vim"
export VISUAL="vim"
export PYTHONWARNINGS=ignore

source ~/.zshrc-path
source ~/.zprofile
source ~/.zshrc-aliases

# Homebrew Zsh enhancements (Dracula theme, completions, autosuggestions, highlighting)
# Dracula Zsh syntax highlighting theme
export FPATH="$HOMEBREW_SHARE/zsh-completions:$FPATH"

# Initialize completion system
autoload -Uz compinit
compinit

# Enable classic completion menu selection with up/down navigation
zstyle ':completion:*' menu select

# Fancier interactive completion menu (fzf-tab)
source ~/.fzf-tab/fzf-tab.plugin.zsh

# Zsh Autosuggestions
source "$HOMEBREW_SHARE/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOMEBREW_SHARE/zsh-history-substring-search/zsh-history-substring-search.zsh"
source "$HOMEBREW_SHARE/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source dracula-zsh-syntax-highlighting.sh

# Load prompt logic
source ~/.zshrc-ps1

source ~/.zshrc-flags
source ~/.zshrc-keybindings
source ~/.zshrc-utils
source ~/.zshrc-instahyre
