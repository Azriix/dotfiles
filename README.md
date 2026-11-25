# dotfiles

## Install

```bash
git clone https://github.com/Azriix/dotfiles.git && cd dotfiles && ./install.sh
```

## Usage

```bash
cze ~/.config/zsh/aliases.zsh        # edit a config (in the repo) and apply it
czd                                  # diff between the repo and $HOME
cz re-add ~/.config/ghostty/config   # bring back a change made in $HOME (not for .tmpl files)
cz add ~/.config/tool/config         # manage a new file
czcd                                 # cd into the repo to commit
update                               # apt/brew + repo pull + apply + zsh plugins
```

Add a package: `home/.chezmoidata/packages.yaml`, then `cz apply`.

## Per-machine (not in the repo)

```bash
~/.config/zsh/local.zsh      # aliases, PATH, variables
~/.ssh/config.local          # SSH hosts
~/.config/git/config.local   # git identity
```
