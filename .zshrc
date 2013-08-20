# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew bundler rails rvm gem github vagrant git-extras)

# AWS variables
export AWS_ELB_HOME="/usr/local/ElasticLoadBalancing"
export EC2_HOME="/usr/local/ec2-api-tools"
export AWS_RDS_HOME="/usr/local/RDSCli"
export EC2_AMITOOL_HOME="/usr/local/ec2-ami-tools"
export AWS_CLOUDWATCH_HOME="/usr/local/CloudWatch"
export AWS_AUTO_SCALING_HOME="/usr/local/AutoScaling"

export JAVA_HOME='/Library/Java/Home/'
export PATH="/usr/local/AutoScaling/bin:/usr/local/CloudWatch/bin:/usr/local/ec2-ami-tools/bin:/usr/local/RDSCli/bin:/usr/local/ec2-api-tools/bin:/usr/local/ElasticLoadBalancing/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$HOME/.rvm/bin"

# This loads RVM into a shell session
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

source $ZSH/oh-my-zsh.sh

source $HOME/.xpeppersrc
source $HOME/.aliasesrc

