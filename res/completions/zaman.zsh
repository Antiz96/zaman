#compdef zaman

local -a opts
opts=(
    {-m,--menu}'[Print a menu via rofi or dmenu that lists every man pages to choose from (default operation)]'
    {-o,--output}'[(Args <man page> <file>) Save <man page> into the <file> PDF file]'
    {-O,--save}'[(Arg <man page>) Save <man page> into the "man_<man page>.pdf" file in the current directory]'
    {-h,--help}'[Display the help message]'
    {-V,--version}'[Display version information]'
)

_arguments $opts
