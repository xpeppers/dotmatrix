# ~/.bashrc
# vim:set ft=sh sw=2 sts=2:

source "$HOME/.xpeppersrc"

# Store 10,000 history entries
export HISTSIZE=10000
# Don't store duplicates
export HISTCONTROL=erasedups
# Append to history file
shopt -s histappend

VISUAL=vim
EDITOR="$VISUAL"
LESS="FRX"
RI="--format ansi -T"

export VISUAL EDITOR LESS RI

export CLICOLOR=1
export LSCOLORS=gxgxcxdxbxegedabagacad

export CLICOLOR LSCOLORS

bind 'set bind-tty-special-chars off'
bind '"\ep": history-search-backward'
bind '"\en": history-search-forward'
bind '"\C-w": backward-kill-word'

[ -z "$PS1" ] || stty -ixon

[ -z "$PS1" ] || export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$(git_prompt_info '(%s)')$ "

git_completion='/usr/local/Cellar/git/1.7*/etc/bash_completion.d/git-completion.bash'

if [ -f $git_completion ]; then
  source $git_completion
fi

[ ! -f "$HOME/.bashrc.local" ] || . "$HOME/.bashrc.local"

export PATH="/usr/local/ElasticLoadBalancing/bin:$PATH"
export AWS_ELB_HOME="/usr/local/ElasticLoadBalancing"
export PATH="/usr/local/ec2-api-tools/bin:$PATH"
export EC2_HOME="/usr/local/ec2-api-tools"
export PATH="/usr/local/RDSCli/bin:$PATH"
export AWS_RDS_HOME="/usr/local/RDSCli"
export PATH="/usr/local/ec2-ami-tools/bin:$PATH"
export EC2_AMITOOL_HOME="/usr/local/ec2-ami-tools"
export PATH="/usr/local/CloudWatch/bin:$PATH"
export AWS_CLOUDWATCH_HOME="/usr/local/CloudWatch"
export PATH="/usr/local/AutoScaling/bin:$PATH"
export AWS_AUTO_SCALING_HOME="/usr/local/AutoScaling"
export PATH=$PATH:'/usr/local/AutoScaling/sbin'
export JAVA_HOME='/Library/Java/Home/'

source ~/.aliasesrc

# This loads RVM into a shell session
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
