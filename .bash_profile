if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Git auto-complete
# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

# Prompt
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  PS1="\[\033[0;32m\]\u:\[\033[0;34m\]\W\[\033[0;94m\]\$(__git_ps1)🐛\[\033[0;37m\]  "
fi

# Aliases
alias be="bundle exec"
alias ber="bundle exec rspec"
alias k="kubectl"
