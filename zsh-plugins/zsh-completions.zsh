# sourcing the plugin from brew installed path
zsh_completions='$(brew --prefix)/share/zsh-completions'

if test -d $zsh_completions
then
  fpath=($zsh_completions $fpath)
fi
