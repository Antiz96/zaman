zaman(1) ["zaman 1.2.3" ["zaman Manual"]]

# NAME

*zaman* - CLI tool to display (or save) man pages as PDFs.

# DESCRIPTION

A simple CLI tool to display (or save) man pages as PDFs files in Zathura for easier reading.
It also allows to navigate through all the man pages available on your system via a dynamic menu (Rofi or Dmenu).

# SYNOPSIS

*zaman* [OPTION] [MAN_PAGE]

# OPTIONS

You can directly specify the man page to display as a PDF. For instance, to display the `ls` man page:

```
zaman ls
```

*-m, --menu*
	Display the list of all the available man pages in a dynamic menu (rofi or dmenu), allowing you to search for the one to display as a PDF (default operation).

*-o, --output* <man_page> <file>
	Export <man_page> into the PDF <file>. 
	For instance, `zaman -o ls ~/Documents/man/ls.pdf`.

*-O, --save* <man_page>
	Export <man_page> into a "man_<command>.pdf" PDF file inside your current directory. 
	For instance, `zaman -O ls` (which will save the `ls` man page in a file called `man_ls.pdf` PDF file in your current directory).
	If <man_page> isn't specified (`zaman -O`), it opens a dynamic menu listing all man pages available on your system, allowing you to choose the one to export.

*-V, --version*
	Display version information.

*-h, --help*
	Display the help message.

# EXIT STATUS

*0*
	OK.

*1*
	Invalid option or unknown man page.

*2*
	Neither `rofi` nor `dmenu` are installed.

*3*
	User didn't gave the confirmation to proceed.

*4*
	User didn't specified a man page or a file to export it in to with the `-o / --output` option.

# SEE ALSO

*zathura*(1),
*rofi*(1),
*dmenu*(1),
*groff*(1),
*echo*(1),
*grep*(1)

# BUGS

Please report bugs to the GitHub page: https://github.com/Antiz96/zaman

# AUTHOR

Robin Candau <robincandau@protonmail.com>
