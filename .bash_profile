
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#
# Path
#

export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/sbin

export AWS_ACCESS_KEY="access_key_here"
export AWS_SECRET_KEY="secret_key_here"

#
# Mode
#

function devmode()
{
    echo "Using Gemfile.devel for development mode."
    export BUNDLE_GEMFILE=Gemfile.devel
}

function prodmode()
{
    echo "Using Gemfile for production mode."
    unset BUNDLE_GEMFILE
}

devmode


#
# Git auto-complete
# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
#

if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi


#
# Prompt
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
#

if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  PS1="\[\033[0;32m\]\u:\[\033[0;34m\]\W\[\033[0;94m\]\$(__git_ps1)🐛\[\033[0;37m\]  "
fi


#
# Aliases
#

alias be="bundle exec"
alias ber="bundle exec rspec"

# https://github.com/nvbn/thefuck
alias fuck='$(thefuck $(fc -ln -1))'
alias FUCK='fuck'


