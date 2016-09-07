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

zle -N newtab

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char
