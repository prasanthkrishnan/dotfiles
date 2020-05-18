export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath=($ZSH/functions $fpath)

autoload -U $ZSH/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt AUTO_PUSHD #cd to act like pushd
setopt PUSHD_IGNORE_DUPS #ignore dups in dir
setopt PUSHDMINUS
setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt IGNORE_EOF

unsetopt MENU_COMPLETE   # do not autoselect the first completion entry
unsetopt FLOWCONTROL  # output flow control via start/stop characters (usually assigned to ^S/^Q) is disabled in the shell’s editor
setopt AUTO_MENU         # show completion menu on succesive tab press
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END # If a completion is performed with the cursor within a word, and a full completion is inserted, the cursor is moved to the end of the word

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

setopt INTERACTIVECOMMENTS # recognize comments

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt COMPLETE_ALIASES

# registering kill widget
zle -N znt-kill-widget
# registering cd widget
zle -N znt-cd-widget
# register opening #EDITOR for editing long commands
autoload -U edit-command-line
zle -N edit-command-line

# Use vi key bindings
bindkey -v
# rebinding ctrl + r to znt-history-widget after vi bindings
bindkey -M viins '^r' znt-history-widget
bindkey -M vicmd '^r' znt-history-widget
# binding ctrl + o to znt-cd-widget
bindkey -M viins '^o' znt-cd-widget
bindkey -M vicmd '^o' znt-cd-widget

# binding ctrl + k to znt-kill-widget
bindkey -M viins '^k' znt-kill-widget
bindkey -M vicmd '^k' znt-kill-widget

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word

# open $EDITOR to edit command line
bindkey -M vicmd v edit-command-line
