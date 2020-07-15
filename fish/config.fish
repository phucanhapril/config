if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

set fish_greeting
set theme_short_path yes

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/arpil/Code/google-cloud-sdk/path.fish.inc' ]; . '/Users/arpil/Code/google-cloud-sdk/path.fish.inc'; end

# aliases
# general
alias vz="vim ~/code/config/fish/config.fish"
alias sz="source ~/code/config/fish/config.fish"

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
function ch
  git checkout -b ch$argv
end
function gpresquash
  git fetch
  git reset (git merge-base master $argv)
end

# dr parsley
alias dr="cd ~/code/dr"
alias drs="dr && yarn start"
alias drstartall="brew services start nginx && drs"
alias apo="yarn get:graphql"
alias sto="yarn storybook"
alias testd="yarn test:debug"
alias tests="yarn test --silent"

# parsley apis
alias dapiprod="cd ~/code && ./cloud_sql_proxy -instances=parsley-production-1:us-east1:sage-database=tcp:5432"
alias dapistag="cd ~/code && ./cloud_sql_proxy -instances=parsley-staging-1:us-east1:sage-database=tcp:5435"
alias dapifwd="kubectl port-forward deployment/data-api-server 8000"
alias ppprod="cd ~/code && ./cloud_sql_proxy -instances=parsley-production-1:us-east1:peppermint-database=tcp:5438"
alias ppstag="cd ~/code && ./cloud_sql_proxy -instances=parsley-staging-1:us-east1:peppermint-database=tcp:5437"

alias nginxs="brew services start nginx"
alias nginxk="brew services stop nginx"
alias nginxr="brew services restart nginx"

alias papi="cd ~/code/sage/product-api"
alias papifwd="nginx && dapifwd"
alias papis="papi && npm start"
alias papistag="cp /usr/local/etc/nginx/nginx.conf-staging /usr/local/etc/nginx/nginx.conf && nginxk && nginxs"
alias papilo="cp /usr/local/etc/nginx/nginx.conf-local /usr/local/etc/nginx/nginx.conf && nginxk && nginxs"
alias papigen="papi && npm run gql-gen"
alias papibuild="papi && npm run gcp-build"
