alias sudo='sudo '
alias g='git'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'
alias .....='cd ../../../../'

alias bl='cd ~/BL/mothership'
alias h='history'
alias hf='history | grep'
alias p='ps ax | grep'
alias sb='source ~/.bash_profile'

alias back='rake backburner:work'

alias tmux='TERM=screen-256color-bce tmux'
alias imagery="cd $IMAGERY_PATH"

alias purge_test='RAILS_ENV=test rake db:drop db:create db:schema:load'
alias recon='sudo service network-manager restart'

lcp() {
  if [ $# != 1 ] ; then
    echo "usage: <key>"
    return
  fi
  lpass show -c --password $1 && echo "copied"
}

# easier ssh
to() {
  if [ $# != 1 ] ; then
    echo "usage: <host>"
    return
  fi
  ssh -l $LOGIN_NAME $1
}

full_deploy() {
  g co -b `date +'release-%Y%m%d-%H%M%S'`
  echo "pushing to github.."
  g psu
  echo "pushing to deploy server.."
  g psd
  deploy
}

deploy() {
  echo "deploying.."
  BRANCH=`git rev-parse --abbrev-ref HEAD` cap deploy
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

resurrect() {
  systemctl start mongodb.service
  systemctl start mariadb.service
  systemctl start redis.service
  systemctl start elasticsearch.service
  systemctl start memcached.service
}
