complete -c zaman -f

complete -c zaman -s m -l menu -d 'Print a menu via rofi or dmenu that lists every man pages to choose from (default operation)'
complete -c zaman -s o -l output -d '(Args <man page> <file>) Save <man page> into the <file> PDF file'
complete -c zaman -s O -l save -d '(Arg <man page>) Save <man page> into the "man_<man page>.pdf" file in the current directory'
complete -c zaman -s h -l help -d 'Display the help message'
complete -c zaman -s V -l version -d 'Display version information'
