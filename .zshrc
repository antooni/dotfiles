# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/ohmyzsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="avit"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# aliases

# aliases yarn
alias y="yarn"
alias yl="yarn lint"
alias ylf="yarn lint:fix"
alias yf="yarn format"
alias yff="yarn format:fix"
alias ylff="yarn lint:fix && yarn format:fix"
alias ys="yarn start"
alias yd="yarn dev"
alias ysd="yarn start:dev"
alias yss="yarn start:staging"
alias ysl="yarn start:local"
alias ysp="yarn start:production"
alias yb="yarn build"
alias yt="yarn test --reporter spec"
alias ytw="yarn test:watch --reporter spec"
alias ytg="yarn test -g --reporter spec"
alias ya="yarn add"
alias yad="yarn add --dev"
alias yr="yarn remove"
alias ytc="yarn typecheck"
alias ysk="yarn storybook"
alias ydc="yarn discover"
alias ybd="yarn build:dependencies"

# aliases git
alias prune='git branch -r | awk "{print \$1}" | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk "{print \$1}" | xargs git branch -D'
alias g="git"
alias gs="git status"
alias gc="git checkout"
alias gcm="git checkout main"
alias gcmp="git fetch -p && git checkout main && git reset --hard origin/main"
alias gcmpp="gcmp && prune"
alias gcb="git checkout -b"
alias gb="git branch"
alias gba="git branch -a"
alias gl="git log --oneline"
alias glg="git log --oneline --graph --all"
alias gap='git add -p'
alias gitcm='git commit -m'
alias gsw='git switch -'

#aliases gh
alias ghpr='gh pr create'

#dotfiles
alias config-dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
export PATH="$PATH:/home/antonipawlak/.protostar/dist/protostar"

export PATH="$PATH:/home/antonipawlak/.foundry/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /Users/antooni/.docker/init-zsh.sh || true # Added by Docker Desktop

export PATH="$PATH:/Users/antooni/.foundry/bin"

# aliases specific for my current MacOS setup
alias yche="git pull && cd /Users/antooni/repos/l2beat && yarn checkout && cd -"
alias ybd="cd /Users/antooni/repos/l2beat && yarn build:dependencies && cd -"
alias mod="code ~/.zshrc && open https://github.com/antooni/dotfiles/blob/master/.zshrc"
alias pgrt="psql -h localhost -U postgres -f /Users/antooni/repos/db/scripts/reset_test.sql"
alias pgrl="psql -h localhost -U postgres -f /Users/antooni/repos/db/scripts/reset_local.sql"


# aliases specific for Linux
# alias mod="code ~/.zshrc && xdg-open https://github.com/antooni/dotfiles/blob/master/.zshrc"
