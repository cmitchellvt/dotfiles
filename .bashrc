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

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias py='python3'
alias la='ls -a'
alias qemu='qemu-system-x86_64'
alias dog='curl dogs.sh'
starwars () {
	echo "type ctrl+] then type quit to quit"
	sleep 5
	telnet towel.blinkenlights.nl
}

export PATH="$HOME/.cargo/bin:$PATH"
