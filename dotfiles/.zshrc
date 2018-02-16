###	----------------------------------------------------------- ###
### -------------------- Mah Shell Config! -------------------- ###
### ---------------------- By MocoNinja ----------------------- ###
###	----------------------------------------------------------- ###

# Path to your oh-my-zsh installation.
  export ZSH=$HOME/.oh-my-zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


###	----------------------------------------------------------- ###
### ------------------------- Themes -------------------------- ###
###	----------------------------------------------------------- ###

 # See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
 ZSH_THEME="robbyrussell"
 # ZSH_THEME="random"
 # ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
 # Neat themes
 # sonicradish takashiyoshida robbyrussell agnoste rmortalscumbag smt simonoff Soliah miloshadzic rkj dieter candy jnrowe sunrise

###	----------------------------------------------------------- ###
### ------------------------- Plugins ------------------------- ###
###	----------------------------------------------------------- ###

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/

plugins=(
  git
  #vi-mode
  mvn
)

source $ZSH/oh-my-zsh.sh

###	----------------------------------------------------------- ###
### ------- Environment Variables, Aliases and such... -------- ###
###	----------------------------------------------------------- ###

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# No telemetry for dot.net core
export DOTNET_CLI_TELEMETRY_OPTOUT=true
# My GIT* Profiles for easy access
export GITHUB="https://github.com/MocoNinja/"
export GITLAB="https://gitlab.com/MocoNinja/"
# Odoo and Gorka
alias odoo="cd /opt/odoo/odoo/ && ./odoo-bin"
alias rubriquita="cd /opt/odoo/odoo/addons/openacademy"
# Convenience
alias bb="shutdown now"
alias c="clear"
alias springrun="mvn compile && mvn spring-boot:run"
alias h2="sh ~/.apps/h2/bin/h2.sh"
# Navigation
alias gitDFDir="cd ~/.git/LinuxConfs/dotfiles"
alias gitDFCopy="cp ~/.zshrc ~/.git/LinuxConfs/dotfiles"
alias gitDFBak="cp ~/.zshrc ~/.git/LinuxConfs/dotfiles && cd ~/.git/LinuxConfs/dotfiles"
# Raspberry
alias raspScan="nmap -sn 192.168.1.0/24"
