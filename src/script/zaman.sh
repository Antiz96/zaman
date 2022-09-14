#!/bin/bash

#Current version
version="1.0.2"

#Replace the $1 var by "option" just to make the script more readable/less complex
option="${1}"

#If the option passed to the "zaman" command matches an available man page, print it to a PDF file via "zathura"
if man -k . | awk '{print $1}' | grep -iq ^"${option}"$ ; then
	man -Tpdf "${option}" | zathura --mode=fullscreen -
else
	case "${option}" in
		#If no option is passed to the "zaman" command, print the list of available man pages through "dmenu" and print the selected one to a PDF file via "zathura"
		"")
			man_selected=$(man -k . | awk '{print $1}' | dmenu -l 15)
			
			if man -k . | awk '{print $1}' | grep -iq ^"${man_selected}"$ ; then
				man -Tpdf "${man_selected}" | zathura --mode=fullscreen -
			else
				man "${man_selected}"
				echo >&2 "Try 'zaman --help' for more information."
				exit 1
			fi
		;;
		#If the -v (or --version) option is passed to the "zaman" command, print the current version
		-v|--version)
			echo "${version}"
			exit 0
		;;
		#If the -h (or --help) option is passed to the "zaman" command, print the documentation (man page)
		#The documentation is also readable here https://github.com/Antiz96/zaman or by typing the following command in a terminal : man zaman
		-h|--help)
			#Print the documentation (man page) and quit
			man zaman | col
			exit 0
		;;
		#If any other option(s) are passed to the script, print an error and quit
		*)
			man "${option}"
			echo >&2 "Try 'zaman --help' for more information."
			exit 1
		;;
	esac
fi
