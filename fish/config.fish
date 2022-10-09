set fish_greeting
set theme_short_path yes

# aliases
# general
alias vf="vim ~/code/config/fish/config.fish"
alias sf="source ~/code/config/fish/config.fish"
alias home="cd ~"
alias hyper:config="vim ~/code/config/hyper/config.js"

# headway
alias hw="cd ~/code/headway"
alias devenv="export ENVIRONMENT=development"
alias mam="hw && cd mamba"
alias mams="mam && vup && make start"
function mamt
  mam && export ENVIRONMENT=unittest && vup && ./venv/bin/pytest -n 4 --dist loadfile $argv -s -v -ra -Wignore
end
alias mamts="mam && make test"
alias mamp="ps -fA | grep python" # get mamba processes to kill :-) with kill -9 <pid>
alias web="hw && cd web"
alias ago="hw && cd web/apps/patient"
alias agos="web && yarn workspace @headway/patient start"
alias atl="hw && cd web/apps/atlas"
alias atls="web && yarn workspace @headway/atlas start"
alias sig="hw && cd web/apps/sigmund"
alias sigs="web && yarn workspace @headway/sigmund start"
alias fixt="hw && cd fixtures"
alias cy="hw && cd e2e && yarn run cypress:open"
alias play="hw && cd playwright"
alias plays="play && yarn playwright test"

# shared folder
alias lsha="yarn link @headway/shared"
alias usha="yarn unlink @headway/shared"
alias byenode="rm -rf node_modules"
alias yarp="sha && yarn add --dev @material-ui/core@^4.7.1 @material-ui/icons@^4.3.0 @material-ui/lab@^4.0.0-alpha.46 @material-ui/pickers@^3.2.10 formik@^2.1.3 react@^16.13.1 react-dom@16.13.1"

# db
alias celery:start="mam && vup && make start-celery"
alias celery:stop="make stop-celery"
alias db:start="pg_ctl -D /usr/local/var/postgresql@10 start"
alias db:upgrade="mam && make db-upgrade"
alias db:downgrade="mam && make db-downgrade"
alias db:migrate="mam && make db-migrate"
alias db:loadfix="fixt && PGDATABASE=headway-local PGUSER=masteruser ./load.sh test"
alias db:savefix="fixt && PGDATABASE=headway-local PGUSER=masteruser ./create.sh test"
function db:sh
  if count $argv > /dev/null
    psql -d $argv
  else
    psql -d headway-local
  end
end
alias redis:start="brew services start redis"

# python
alias py="python3"
alias pyv="python --version"
alias vdown="deactivate"
function vup
  if count $argv > /dev/null 
    source $argv/bin/activate.fish
  else
    source venv/bin/activate.fish
  end
end

# git
alias gaa="git add -A"
alias gac="gaa && git commit -m"
alias gaca="gaa && git commit -n --amend"
alias gbr="git branch"
alias gbd="git branch -D"
alias gca="git commit -n --amend"
alias gch="git checkout"
alias gchb="git checkout -b"
alias gcherry="git cherry-pick"
alias gchm="git checkout master"
alias gcm="git commit -m"
alias gdiff="git diff"
alias glo="git log --oneline"
alias gpull="git pull"
alias gpup="git push --set-upstream origin"
alias gstat="git status"
alias gunstage="git reset"
alias guncommit="git reset HEAD^"
function gpresquash
  git fetch
  git reset (git merge-base main $argv)
end

# headway openssl stuff
export PYCURL_SSL_LIBRARY=openssl
export LDFLAGS=-L/usr/local/opt/openssl/lib
export CPPFLAGS=-I/usr/local/opt/openssl/include

status is-login; and pyenv init --path | source
pyenv init - | source
pyenv virtualenv-init - | source
