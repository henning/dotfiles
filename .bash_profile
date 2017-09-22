#
# .bash_profile
#
# @author Jeff Geerling
# @see .inputrc
#

# Nicer prompt.
#export PS1="\[\e[0;32m\]\]\[\] \[\e[1;32m\]\]\t \[\e[0;2m\]\]\w \[\e[0m\]\]\[$\] "
#export PS1="\[\e[0;32m\]\] \[\e[0;2m\]\]\w \[\e[0m\]\]"

# Use colors.
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:$PATH

# Include alias file (if present) containing aliases for ssh, etc.
if [ -f ~/.bash_aliases ]
then
  source ~/.bash_aliases
fi

# Include bashrc file (if present).
if [ -f ~/.bashrc ]
then
  source ~/.bashrc
fi

# Git aliases.
alias gs='git status'
alias gc='git commit'
alias gp='git pull --rebase'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'

# Git upstream branch syncer.
# Usage: gsync master (checks out master, pull upstream, push origin).
#function gsync() {
#  if [[ ! "$1" ]] ; then
#      echo "You must supply a branch."
#      return 0
#  fi
#
#  BRANCHES=$(git branch --list $1)
#  if [ ! "$BRANCHES" ] ; then
#     echo "Branch $1 does not exist."
#     return 0
#  fi
#
#  git checkout "$1" && \
#  git pull upstream "$1" && \
#  git push origin "$1"
#}

# Turn on Git autocomplete.
brew_prefix=`brew --prefix`
if [ -f $brew_prefix/etc/bash_completion ]; then
  . $brew_prefix/etc/bash_completion
fi

# Vagrant configuration.
export VAGRANT_DEFAULT_PROVIDER='virtualbox'

# Disable cowsay in Ansible.
export ANSIBLE_NOCOWS=1

# Delete a given line number in the known_hosts file.
knownrm() {
  re='^[0-9]+$'
  if ! [[ $1 =~ $re ]] ; then
    echo "error: line number missing" >&2;
  else
    sed -i '' "$1d" ~/.ssh/known_hosts
  fi
}

alias nvmload='source $(brew --prefix nvm)/nvm.sh'

export HOMEBREW_GITHUB_API_TOKEN="f3a3ccb9c7f27064e06cf02d533c0f1f6f918a5c"

#export PS1="\$(git-radar --bash --fetch)\n$PS1\n \[$\] "
#export PS1="\$(git-radar --bash --fetch) - $PS1 \[$\] "

export PATH=./node_modules/.bin/:$PATH

export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/henning/opt/google-cloud-sdk/path.bash.inc' ]; then 
  source '/Users/henning/opt/google-cloud-sdk/path.bash.inc'; 
fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/henning/opt/google-cloud-sdk/completion.bash.inc' ]; then 
  source '/Users/henning/opt/google-cloud-sdk/completion.bash.inc'; 
fi

export PYTHONSTARTUP=$HOME/.pythonrc.py

