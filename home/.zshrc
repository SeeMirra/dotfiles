# Source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Docker completion (autoload -Uz compinit && compinit -i)
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# OS detection
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Darwin' ]]; then
   platform='macosx'
elif [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
fi

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
