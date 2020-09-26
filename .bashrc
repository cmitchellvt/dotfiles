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
# For CS50 online course
export LD_LIBRARY_PATH=/usr/local/lib
export PATH="$HOME/.cargo/bin:$PATH"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias py='python3'
alias la='ls -a'
alias qemu='qemu-system-x86_64'
# git
alias push='git push'
alias pull='git pull'
alias add='git add'
# name puzzles
uniquenames () {
	cut -d, -f1 $1 | uniq -d
}

starwars () {
	echo "type ctrl+] then type quit to quit"
	sleep 5
	telnet towel.blinkenlights.nl
}
