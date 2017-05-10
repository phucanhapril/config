## installation
`git clone git@github.com:phucanhapril/config.git`

## create symlinks
```
ln -s <path/to/config>/vim/vimrc ~/.vimrc
ln -s <path/to/config>/vim ~/.vim
```

## oooouuu this is the fun part
```
cd ~/.vim
git submodule init
git submodule update
```
## installing new plugins
```
cd ~/.vim
git submodule add <url.to/plugin> bundle/<plugin-name>
```

## upgrading plugin bundles
for a single plugin: `cd ~/.vim/bundle/<plugin-name> && git pull origin master`

to upgrade all bundles plugins: `git submodule foreach git pull origin master`
