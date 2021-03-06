# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH
export EDITOR="/usr/bin/vim"
PS1="\e[0;34m[\u@\h \W]$\e[m"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias py='python'
alias la='ls -a'
alias compile='clang -Wextra -Wall'
alias compilexx='clang++ -Wextra -Wall' 

cheat () {
	curl cheat.sh/$1
}

starwars () {
	echo "type ctrl+] then type quit to quit"
	sleep 5
	telnet towel.blinkenlights.nl
}
