export HISTCONTROL=ignorespace:$HISTCONTROL

wrap_ignore()
{
	echo "\[$1\]"
}

colored_text()
{
	local setup_color="\033[00;32m"
	local reset_color="\033[00m"
	echo "$(wrap_ignore $setup_color)$1$(wrap_ignore $reset_color)"
}

PS1="$(colored_text sk 00 32):\w "
