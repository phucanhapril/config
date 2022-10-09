## install

```sh
brew install fish
# set fish as default shell
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
```

## create symlinks to fish config

```sh
# assuming this repo in ~/code
ln -s ~/code/config/fish/config.fish ~/.config/fish/config.fish
ln -s ~/code/config/fish/fish_variables ~/.config/fish/fish_variables
```

## install nvm

you're prolly gonna need npm so install [fisher](https://github.com/jorgebucaran/fisher#installation) to manage your fish packages. then

```sh
fisher add jorgebucaran/fish-nvm
nvm use lts
```
