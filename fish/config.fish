set fish_greeting
set theme_short_path yes

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
function gpresquash
  git fetch
  git reset (git merge-base master $argv)
end
