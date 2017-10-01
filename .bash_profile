# Colors from http://wiki.archlinux.org/index.php/Color_Bash_Prompt
# misc
NO_COLOR='\e[0m' #disable any colors

# regular colors
BLACK='\e[0;30m'
RED='\e[0;31m'
GREEN='\e[0;32m'
YELLOW='\e[0;33m'
BLUE='\e[0;34m'
MAGENTA='\e[0;35m'
CYAN='\e[0;36m'
WHITE='\e[0;37m'

# emphasized (bolded) colors
EBLACK='\e[1;30m'
ERED='\e[1;31m'
EGREEN='\e[1;32m'
EYELLOW='\e[1;33m'
EBLUE='\e[1;34m'
EMAGENTA='\e[1;35m'
ECYAN='\e[1;36m'
EWHITE='\e[1;37m'

# underlined colors
UBLACK='\e[4;30m'
URED='\e[4;31m'
UGREEN='\e[4;32m'
UYELLOW='\e[4;33m'
UBLUE='\e[4;34m'
UMAGENTA='\e[4;35m'
UCYAN='\e[4;36m'
UWHITE='\e[4;37m'

# background colors
BBLACK='\e[40m'
BRED='\e[41m'
BGREEN='\e[42m'
BYELLOW='\e[43m'
BBLUE='\e[44m'
BMAGENTA='\e[45m'
BCYAN='\e[46m'
BWHITE='\e[47m'

#export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"
export EDITOR="vim"
export NODE_BIN="$HOME/.node/bin"
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home"
export RACK_ENV="development"

export DB_HOST="localhost"
export DB_USER="root"
export DB_PASS=""

alias gt="git commit"
alias gm="git merge"
alias gb="git branch"
alias gc="git checkout"
alias gs="git status"
alias gp="git push"
alias gu="git pull"
alias gf="git fetch"

PS1="\n\u:\w \[$EGREEN\]\$(vcprompt)\[$NO_COLOR\] \n--> "

export PATH="~/bin/:/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$NODE_BIN:$PATH"
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="/usr/local/heroku:/usr/local/heroku/bin:$PATH"
export PATH="/Applications/Android Studio.app/sdk/platform-tools:$PATH"
export PATH="$HOME/.node/bin:$PATH"

## #Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
