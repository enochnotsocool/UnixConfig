#-------------------------------------------------------------------------------
#
#   File        : lxplus_rc.sh
#   Descriptions: LXPLUS machine specific 
#   Usage       : ./lxplus_rc.sh Option
#
#-------------------------------------------------------------------------------
export WORKPATH='/afs/cern.ch/work/y/yichen'
export STOREPATH='/store/yichen'

source ~/.custom-zsh/cmssw.sh

alias bpktest='cmsRun bprimeKit_miniAOD_MC.py   maxEvts=100 Debug=100 2>&1 | tee log.txt'
alias bpkdata='cmsRun bprimeKit_miniAOD_data.py maxEvts=100 Debug=100 2>&1 | tee log.txt'
alias fatalCheck='cat log.txt | grep -A 10 -B 10 Fatal'

unset SSH_ASKPASS ## Disabling gnome 

inrne4 (){
   ssh inrne4
}
