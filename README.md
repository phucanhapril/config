# my programming environment config
_how i made my terminal cozy af, a work in progress_

## iterm 2 & oh my zsh
from this helpful [gist](https://gist.github.com/kevin-smets/8568070)

![screenshot](https://github.com/phucanhapril/config/raw/master/img/terminal-pt1.png "iterm 2 & oh my zsh screenshot")

**iterm 2**
* install homebrew

  `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

* install iterm 2

  `brew cask install iterm2`

* get the [dracula theme](https://draculatheme.com/iterm/)
* install a powerline font like [meslo](https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf) and set it in iterm

**oh my zsh**
* install [oh my zsh](https://github.com/robbyrussell/oh-my-zsh)

  `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
   * edit `~/.zshrc`: `DEFAULT_USER="<username>"` and `ZSH_THEME="agnoster"`

* enable syntax highlighting

  `brew install zsh-syntax-highlighting`
  * add to `~/.zshrc`: `source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh`

* enable [auto-suggestion](https://github.com/zsh-users/zsh-autosuggestions#oh-my-zsh)

  `git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions`
  * add to `~/.zshrc`: `plugins=(zsh-autosuggestions)`
