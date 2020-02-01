# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/robbxyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Prompt
SPACESHIP_PROMPT_ADD_NEWLINE="true"
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"

# Char
SPACESHIP_CHAR_SYMBOL=" \uf0e7"
SPACESHIP_CHAR_PREFIX="\uf296"
SPACESHIP_CHAR_SUFFIX=(" ")
SPACESHIP_CHAR_COLOR_SUCCESS="yellow"

# User
SPACESHIP_USER_SHOW="true"

# Package
# SPACESHIP_PACKAGE_SHOW="false"
# SPACESHIP_PACKAGE_SYMBOL="📦 "

plugins=(
  git
  pip
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
  gem
  brew
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


#             ██ ██
#            ░██░░
#   ██████   ░██ ██  ██████    ██████  █████   ██████
#  ░░░░░░██  ░██░██ ░░░░░░██  ██░░░░  ██░░░██ ██░░░░
#   ███████  ░██░██  ███████ ░░█████ ░███████░░█████
#  ██░░░░██  ░██░██ ██░░░░██  ░░░░░██░██░░░░  ░░░░░██
# ░░████████ ███░██░░████████ ██████ ░░██████ ██████
#  ░░░░░░░░ ░░░ ░░  ░░░░░░░░ ░░░░░░   ░░░░░░ ░░░░░░
#

alias ~="cd ~"                              # ~:            Go Home
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias c='clear'                             # c:            Clear terminal display

alias root='cd /'
alias dtop='cd ~/Desktop'
alias dl="cd ~/Downloads"
alias docs="cd ~/Documents"
alias o=open
alias ..="cd .."
alias ...="cd ..; cd .."
alias ....="cd ..; cd ..; cd .."

# Easy access to dotfiles
alias aliases='open ~/.aliases'

#   -----------------------------
#   NPM
#   -----------------------------

alias npmg="npm i -g "                            # Install dependencies globally
alias npmS="npm i -S "                            # Install and save to dependencies in your package.json
alias npmD="npm i -D "                            # Install and save to dev-dependencies in your package.json
alias npmE='PATH="$(npm bin)":"$PATH"'            # Execute command from node_modules folder based on current directory
alias npmO="npm outdated"                         # Check which npm modules are outdated
alias npmV="npm -v"                               # Check package versions
alias npmL="npm list"                             # Check package versions
alias npmst="npm start"                           # Run npm start
alias npmt="npm test"                             # Run npm test
alias npmrm="rm -rf node_modules && npm install"  # Run npm test

#
#                     ██   ██
# ██████             ░██  ░██
# ░██░░░██  ██████   ██████░██       ██████
# ░██  ░██ ░░░░░░██ ░░░██░ ░██████  ██░░░░
# ░██████   ███████   ░██  ░██░░░██░░█████
# ░██░░░   ██░░░░██   ░██  ░██  ░██ ░░░░░██
# ░██     ░░████████  ░░██ ░██  ░██ ██████
# ░░       ░░░░░░░░    ░░  ░░   ░░ ░░░░░░
#

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
