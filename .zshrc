# STYLING
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%F{blue}%~%f %F{red}${vcs_info_msg_0_}%f> '

# ADVANCED HISTORY ON ARROW UP
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
setopt SHARE_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000


# aliases yarn
alias p="pnpm"
alias pl="pnpm lint"
alias plf="pnpm lint:fix"
alias pf="pnpm format"
alias pff="pnpm format:fix"
alias plff="pnpm format:fix && pnpm lint:fix"
alias ps="pnpm start"
alias pd="pnpm dev"
alias psd="pnpm start:dev"
alias pss="pnpm start:staging"
alias psl="pnpm start:local"
alias psp="pnpm start:production"
alias pb="pnpm build"
alias pt="pnpm test --reporter spec"
alias ptw="pnpm test:watch --reporter spec"
alias ptg="pnpm test -g --reporter spec"
alias pa="pnpm add"
alias pad="pnpm add --dev"
alias pr="pnpm remove"
alias ptc="pnpm typecheck"
alias psk="pnpm storybook"
alias pdc="pnpm discover"
alias pbd="pnpm build:dependencies"
alias pdd="ytc && pnpm test --reporter dot && ylff"
alias pci="git checkout main && git pull && git switch - && cd \$(git rev-parse --show-toplevel) && plff && p i && ptc && pt && cd -"
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

alias lg='lazygit'
alias mod="zed ~/.zshrc && open https://github.com/antooni/dotfiles/blob/master/.zshrc"
alias pgrt="psql -h localhost -U postgres -f /Users/antooni/repos/db/scripts/reset_test.sql"
alias pgrl="psql -h localhost -U postgres -f /Users/antooni/repos/db/scripts/reset_local.sql"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
