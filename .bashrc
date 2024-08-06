#
#~/.bashrc
#

# config
export BROWSER="Arc"

# Path
export GITUSER="Tianyi-Billy-Ma"
export REPOS="$HOME/Documents/GitHub"
export GUREPOS="$REPOS/$GITUSER"
export SECOND_BRAIN="$HOME/Documents/Obsidian/Second-Brain"
export DOTFILES="$GUREPOS/dotfiles"
export MACKUPDIR="$GUREPOS/Mackup"
export SCRIPTS="$MACKUPDIR/scripts"

export PATH="${PATH:+${PATH}:}"$SCRIPTS

# keybinds
bind -x '"\C-l":clear'

# ~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~~~~~~~

export HISTFILE=~/.histfile
export HISTSIZE=25000
export SAVEHIST=25000
export HISTCONTROL=ignorespace

# # ~~~~~~~~~~~~~~~ Prompt ~~~~~~~~~~~~~~~~~~~~~~~~
#
# export GIT_PS1_SHOWDIRTYSTATE=1
# export GIT_PS1_SHOWSTASHSTATE=1
# export GIT_PS1_SHOWUNTRACKEDFILES=1
# # Explicitly unset color (default anyhow). Use 1 to set it.
# export GIT_PS1_SHOWCOLORHINTS=1
# export GIT_PS1_DESCRIBE_STYLE="branch"
# # export GIT_PS1_SHOWUPSTREAM="auto git"
#
# # if [[ -f "$XDG_CONFIG_HOME/bash/gitprompt.sh" ]]; then
# # 	source "$XDG_CONFIG_HOME/bash/gitprompt.sh"
# # fi
#
# # PROMPT_COMMAND='__git_ps1 "\u@\h:\W" " \n$ "'
# # colorized prompt-
# PROMPT_COMMAND='__git_ps1 "\[\e[33m\]\u\[\e[0m\]@\[\e[34m\]\h\[\e[0m\]:\[\e[35m\]\W\[\e[0m\]" " \n$ "'
#
# # The __git_ps1 function prompt is provided by the bash completion installed by brew. See https://github.com/mischavandenburg/dotfiles/issues/5

if [[ "$OSTYPE" == "darwin"* ]]; then
	# echo "I'm on Mac!"

	# brew bash completion
	[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

	[ -f ~/.fzf.bash ] && source ~/.fzf.bash
else
	#	source /usr/share/fzf/key-bindings.bash
	#	source /usr/share/fzf/completion.bash
	[ -f ~/.fzf.bash ] && source ~/.fzf.bash
fi

# ~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~~~

alias v=nvim
alias ..="cd .."

# ls
alias ls='ls --color=auto'
alias ll='ls -la'
alias la='ls -a'

# CD
alias scripts="cd $SCRIPTS"
alias gr="cd $REPOS"
alias gu="cd $GUREPOS"
alias dot="cd $MACKUPDIR"
alias in="cd $SECOND_BRAIN/0-Inbox/"
# vim & second brain
alias sb="cd $SECOND_BRAIN"

# ricing
alias sbr='source ~/.bashrc'

# finds all files recursively and sorts by last modification, ignore hidden files
alias last='find . -type f -not -path "*/\.*" -exec ls -lrt {} +'

# fzf aliases
# use fp to do a fzf search and preview the files
alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
# search for a file with fzf and open it in vim
alias vf='v $(fp)'

alias t=tmux
#
# eval "$(oh-my-posh init bash --config ~/catppuccin_frappe.omp.json)"
eval "$(starship init bash)"
