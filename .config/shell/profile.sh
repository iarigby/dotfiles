if [[ -n "$PS1" ]] && [[ -z "$TMUX" ]] && [[ -n "$SSH_CONNECTION" ]]; then
  tmux -CC attach-session -t ssh_tmux || tmux -CC new-session -s ssh_tmux
  clear
  exit
fi

source $SHELL_CONFIG/aliases.sh
source $SHELL_CONFIG/path.sh
source $SHELL_CONFIG/functions.sh
source $SHELL_CONFIG/environment.sh

export MANPATH="/usr/local/man:$MANPATH"

export FZF_DEFAULT_COMMAND='fd -E .git -E node_modules'

export PIPENV_VENV_IN_PROJECT="enabled"
# cool command but barely use
# [ -z "$(command -v thefuck)" ] || eval $(thefuck --alias)


export HISTSIZE=1000000
export HISTFILESIZE=1000000
export HISTCONTROL=ignoredups
setopt APPEND_HISTORY

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
if [ ! -z $(command -v brew) ]; then
	source $(brew --prefix nvm)/nvm.sh
fi
