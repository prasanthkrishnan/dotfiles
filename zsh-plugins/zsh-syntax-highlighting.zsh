# sourcing the plugin from brew installed path
syntax_highlighting='$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'

if test -f $syntax_highlighting
then
  source $syntax_highlighting
fi
