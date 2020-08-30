set fish_greeting
set theme_short_path yes

# aliases
# general
alias vf="vim ~/code/config/fish/config.fish"
alias sf="source ~/code/config/fish/config.fish"
alias hyper:config="vim ~/code/config/hyper/config.js"

# headway
alias hw="cd ~/code/headway"
alias mam="hw && cd mamba"
alias mams="mam && vup && make start"
alias mamt="mam && make test"
alias ago="hw && cd patient"
alias agos="ago && yarn start"
alias atl="hw && cd atlas"
alias atls="atl && yarn start"
alias sig="hw && cd sigmund"
alias sigs="sig && yarn start"
alias sha="hw && cd shared/package"
alias fixt="hw && cd fixtures"
alias etest="hw && cd e2e && yarn run cypress:run"
alias etest:open="hw && cd e2e && yarn run cypress:open"

# yarn link
alias lsha="yarn link @headway/shared"
alias usha="yarn unlink @headway/shared"
alias byenode="rm -rf node_modules"

# db
alias celery:start="mam && vup && make start-celery"
alias db:start="pg_ctl -D /usr/local/var/postgres start"
alias db:up="mam && make db-upgrade"
alias db:down="mam && make db-downgrade"
alias db:migrate="mam && make db-migrate"
alias db:loadfix="fixt && PGDATABASE=headway-local PGUSER=masteruser ./load.sh test && db:migrate"
alias db:savefix="fixt && PGDATABASE=headway-local PGUSER=masteruser ./create.sh test"
function db:sh
  if count $argv > /dev/null
    psql -d $argv
  else
    psql -d headway-local
  end
end

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
  git reset (git merge-base master $argv)
end
