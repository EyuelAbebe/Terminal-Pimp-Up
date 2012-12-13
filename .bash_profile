# Tell ls to be colourful
export CLICOLOR=1
export PATH=$PATH:/Users/rc/Installers/apache-karaf-2.2.8/bin
export mybatchs=/Users/rc/mybatchs
export EDITOR='subl -w'
export FUSE_HOME=/Applications/FuseESBEnterprise-7.0.0/bin
# export PATH=$PATH:/Applications
export PATH=$PATH:$mybatchs

# pimping up my iterm like paul irish

PATH=$PATH:~/Data/Scripts:~/Data/Utils/rar:~/_Applications:~/_Applications/lynx
 
# alias to quickly show if any Handbrake processes are running
alias hb='sudo ps -aef | grep HandBrakeCLI'
 
# alias for quick DNS cache flushing
alias fc='sudo dscacheutil -flushcache'
 
# enable the git bash completion commands
source ~/.git-prompt.sh
source ~/.git-completion
 
# enable git unstaged indicators - set to a non-empty value
GIT_PS1_SHOWDIRTYSTATE="."
 
# enable showing of untracked files - set to a non-empty value
GIT_PS1_SHOWUNTRACKEDFILES="."
 
# enable stash checking - set to a non-empty value
GIT_PS1_SHOWSTASHSTATE="."
 
# enable showing of HEAD vs its upstream
GIT_PS1_SHOWUPSTREAM="auto"
 
BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)
 
# set the prompt to show current working directory and git branch name, if it exists
 
# this prompt is a green username, black @ symbol, cyan host, magenta current working directory and white git branch (only shows if you're in a git branch)
# unstaged and untracked symbols are shown, too (see above)
# this prompt uses the short colour codes defined above
# PS1='${GREEN}\u${BLACK}@${CYAN}\h:${MAGENTA}\w${WHITE}`__git_ps1 " (%s)"`\$ '
 
# this is a cyan username, @ symbol and host, magenta current working directory and white git branch
# it uses the shorter , but visibly more complex, codes for text colours (shorter because the colour code definitions aren't needed)
# PS1='\[\033[0;36m\]\u@\h\[\033[01m\]:\[\033[0;35m\]\w\[\033[00m\]\[\033[1;30m\]\[\033[0;37m\]`__git_ps1 " (%s)"`\[\033[00m\]\[\033[0;37m\]\$ '
 
# return the prompt prefix for the second line
function set_prefix {
    BRANCH=`__git_ps1`
    if [[ -z $BRANCH ]]; then
        echo "${NORMAL}o"
    else
        echo "${UNDERLINE}+"
    fi
}
 
# and here's one similar to Paul Irish's famous prompt ... not sure if this is the way he does it, but it works  :)
# \033[s = save cursor position
# \033[u = restore cursor position
 
# PS1='${MAGENTA}\u${WHITE} in ${GREEN}\w${WHITE}\$ '
# PS1="\u@\h:\w on\e[0;35m$(__git_ps1)\e[m\$ "
PS1='\n\[\033[0;35m\]\u\[\033[0;32m\]\w\[\033[0m\]$(__git_ps1)\n[$(date +%H:%M:%S)]\[\033[0m\] '
