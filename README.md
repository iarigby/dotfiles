# dotfiles

## Setup
- fork this repository
- install yadm
- yadm clone https://github.com/iarigby/dotfiles
- answer 'y' when prompted for bootstrap

### setup script for fedora
```sh
sudo dnf -y update
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y git zsh tmux neovim
/bin/bash -c "$(curl -fsSL https://gist.githubusercontent.com/iarigby/a120032eb2c88d193fa3ce6232f6ff0f/raw/974ab951377a3b7eeb8704b15c2b33d6e68908fa/init.sh)"
```
