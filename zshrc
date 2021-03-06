# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
DEFAULT_USER="somehats"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git bower brew coffee colored-man colorize copydir copyfile dircycle extract fabric heroku node npm nvm osx pip sublime themes zsh-syntax-highlighting alias-tips)

# User configuration

# Powerline:
powerline-daemon -q
if [[ -e /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
  . /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
elif [[ -e /Library/Python/2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
  . /Library/Python/2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi

export PATH=$HOME/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/opt/llvm/bin:$PATH
export PATH=$HOME/.bin:$PATH
export PATH=$HOME/Documents/nim-0.10.2/bin:$PATH
export PATH=$HOME/Library/Haskell/bin:$PATH
export PATH=$HOME/.nimble/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
# export MANPATH="/usr/local/man:$MANPATH"

export GOPATH=$HOME/Projects/go
export PATH=$GOPATH/bin:$PATH

source $ZSH/oh-my-zsh.sh
source ~/.zshrc-private

alias ccat="colorize"

s() {
  colorize $1 | less -r
}

alias cb=current_branch
alias eak="cd /Users/somehats/Projects/EAK"
alias mg="cd /Users/somehats/Projects/musicglue"
alias vim="nvim"
alias v="vimr"
alias gprom="git pull --rebase origin master"
alias git-delete-merged='git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d'
function gpcb {
  git push -u origin `cb`
}
alias hpr="hub pull-request"
# alias npm=gifi

export EDITOR="nvim"

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export HOMEBREW_GITHUB_API_TOKEN=6e3a58fdfdd52ec11df6fddc9becfac9857f52d7
export KRAKEN_KEY=02fcfdc12ce3ab8bc4b8a44cfbfd6d06
export KRAKEN_SECRET=be8f31efaf9a1657539ece35ee2e8e74d5c1965a

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NVM_DIR="/Users/somehats/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.cargo/bin:$PATH"

PERL_MB_OPT="--install_base \"/Users/somehats/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/somehats/perl5"; export PERL_MM_OPT;

# . /Users/somehats/torch/install/bin/torch-activate

eval "$(direnv hook zsh)"

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PLATFORM_PATH=$HOME/Projects/musicglue/platform

export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Alias tip: "
export ZSH_PLUGINS_ALIAS_TIPS_EXPAND=1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.yarn/bin:$PATH"
