## FZF SETUP FOR BASH ##
# ---------
if [[ ! "$PATH" == */home/sandro-levy/.config/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/sandro-levy/.config/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/sandro-levy/.config/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/sandro-levy/.config/fzf/shell/key-bindings.zsh"
