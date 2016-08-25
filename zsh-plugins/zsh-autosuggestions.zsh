# sourcing the plugin from brew installed path
autosuggestions='$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh'

if test -f $autosuggestions
then
  source $autosuggestions
fi
