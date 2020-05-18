# sourcing the plugin from brew installed path
autosuggestions=$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

if test -f $autosuggestions
then
  ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=10
  source $autosuggestions
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=0"
  ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=10
fi
