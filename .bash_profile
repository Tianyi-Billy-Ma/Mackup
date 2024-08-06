# Only run on macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
	# needed for brew
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Only run these on Ubuntu
if [[ $(grep -E "^(ID|NAME)=" /etc/os-release | grep -q "ubuntu")$? == 0 ]]; then
	# needed for brew to work
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

if [ -r ~/.bashrc ]; then
	source ~/.bashrc
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/tianyima/anaconda3/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
	eval "$__conda_setup"
else
	if [ -f "/Users/tianyima/anaconda3/etc/profile.d/conda.sh" ]; then
		. "/Users/tianyima/anaconda3/etc/profile.d/conda.sh"
	else
		export PATH="/Users/tianyima/anaconda3/bin:$PATH"
	fi
fi
unset __conda_setup
# <<< conda initialize <<<
export XDG_CONFIG_HOME="$HOME"/.config
