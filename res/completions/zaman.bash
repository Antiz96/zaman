_zaman() {
	local arg="${2}"
	local -a opts 
	opts=('-m --menu
	       -o --output
	       -O --save
	       -h --help
	       -V --version')

	COMPREPLY=( $(compgen -W "${opts[*]}" -- "${arg}") )
}

complete -F _zaman zaman
