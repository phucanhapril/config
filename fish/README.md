## install

```sh
brew install fish
# set fish as default shell
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
```

## create symlinks to fish config

```sh
# assuming that you've put this repo in ~/code
ln -s ~/code/config/fish/config.fish ~/.config/fish/config.fish
```
