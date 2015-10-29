alias g='git'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'
alias .....='cd ../../../../'

alias h='history'
alias hf='history | grep'
alias p='ps ax | grep'

alias back='rake backburner:work'

# run SEGA emu as bg process
sega() {
  wine Downloads/Fusion_Emu/Fusion.exe &
  disown
  exit
}
