# sourcing the plugin from brew installed path
navigation_tools='$(brew --prefix)/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh'

if test -f $navigation_tools
then
  source $navigation_tools
fi
