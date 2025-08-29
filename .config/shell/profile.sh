if [[ -n "$PS1" ]] && [[ -z "$TMUX" ]] && [[ -n "$SSH_CONNECTION" ]]; then
  tmux -CC attach-session -t ssh_tmux || tmux -CC new-session -s ssh_tmux
  clear
  exit
fi

source $SHELL_CONFIG/aliases.sh
source $SHELL_CONFIG/path.sh
source $SHELL_CONFIG/functions.sh
source $SHELL_CONFIG/environment.sh

export LANG=en_US.UTF-8
export MANPATH="/usr/local/man:$MANPATH"

export FZF_DEFAULT_COMMAND='fd -E .git -E node_modules'

export PIPENV_VENV_IN_PROJECT=1
# cool command but barely use
# [ -z "$(command -v thefuck)" ] || eval $(thefuck --alias)


export HISTSIZE=1000000
export HISTFILESIZE=1000000
export HISTCONTROL=ignoredups
setopt APPEND_HISTORY


export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

. "$HOME/.cargo/env"            # For sh/bash/zsh/ash/dash/pdksh

