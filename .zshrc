export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="refined"
# ZSH_THEME="bureau"
ZSH_THEME="avit"

plugins=(git tmux yarn)
source $HOME/.shell_config
ZSH_CUSTOM=$SHELL_CONFIG/zsh/

ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh

source $SHELL_CONFIG/profile.sh
source $ZSH_CUSTOM/find_history.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

