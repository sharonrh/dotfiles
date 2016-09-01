alias g='git'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'
alias .....='cd ../../../../'

alias h='history'
alias hf='history | grep'
alias p='ps ax | grep'
alias sb='source ~/.bash_profile'

alias back='rake backburner:work'
alias tagem='ctags -R -f .tags . `bundle show --paths`'

alias tmux='TERM=screen-256color-bce tmux'
alias imagery="cd $IMAGERY_PATH"

alias purge_test='RAILS_ENV=test rake db:drop && RAILS_ENV=test rake db:create && RAILS_ENV=test rake db:schema:load'

# easier ssh
to() {
  if [ $# != 1 ] ; then
    echo "usage: <host>"
    return
  fi
  ssh -l $LOGIN_NAME $1
}

# run SEGA emu as bg process
sega() {
  wine Downloads/Fusion_Emu/Fusion.exe &
  disown
  exit
}

# copy file to legacy file and overwrite file with ours
legacy() {
  if [ $# != 2 ] ; then
    echo "usage: <file> <legacy file>"
    return
  fi

  git checkout --ours $1
  sha="$(git rev-parse origin/master)"
  path=$2
  git show "$sha:$path" > $1
  echo "Copied $1 to $2"
}
