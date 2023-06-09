#!/bin/bash

# zaman: A simple cli tool that prints (or saves) man pages in a PDF file for an easier reading.
# https://github.com/Antiz96/zaman
# Licensed under the GPL-3.0 license

# Variables definition
name="zaman"
version="1.2.1"
option="${1}"
man_selected="${2}"
file="${3}"

# Definition of the help function: Print the help message
help() {
	man ${name} | col
}

# Definition of the version function: Print the current version
version() {
	echo "${name} ${version}"
}

# Definition of the invalid_option function: Print an error message, ask the user to check the help and exit
invalid_option() {
	echo -e >&2 "${name}: invalid option -- '${option}'\nTry '${name} --help' for more information."
	exit 1
}

# Definition of the check_man_page function: Check if "${man_selected}" matches a man page (used in the "print_to_pdf" and "save_to_file"  functions)
check_man_page() {
	if ! man -k . | awk '{print $1}' | grep -iq ^"${man_selected}"$; then
		echo -e >&2 "${name}: man page not found -- '${man_selected}'\nTry '${name} --help' for more information."
		exit 1
	fi
}	

# Definition of the print_to_pdf function: Print "${man_selected}" into a PDF file via `zathura`
print_to_pdf() {
	check_man_page
	man -Tpdf "${man_selected}" | zathura - &
}

# Definition of the menu function: Print the list of available man pages through a `rofi` or `dmenu` menu
menu() {
	if command -v rofi > /dev/null; then
		man_selected=$(man -k . | awk '{print $1}' | rofi -dmenu -sort)
	elif command -v dmenu > /dev/null; then
		man_selected=$(man -k . | awk '{print $1}' | dmenu -l 15)
	else
		echo -e >&2 "A dynamic menu is required to print the list of available man pages\nPlease, install rofi or dmenu"
		exit 1
	fi
}

# Definition of the save_to_file function: Save output to "${file}" (used in the "output" and "save" functions) 
save_to_file() {
	check_man_page

	if [ -f "${file}" ]; then
		echo "The ${file} file already exists"
		read -rp $'Do you want to overwrite its content? [y/N] ' answer

		case "${answer}" in
			[Yy])
				echo
			;;
			*)
				echo -e >&2 "\nAborting"
				exit 1
			;;
		esac
	fi

	man -Tpdf "${man_selected}" > "${file}"
	echo "The ${man_selected} man page has been saved to the ${file} file"
	exit 0
}

# Definition of the output function: Save the man page to the specified PDF file
output() {
	if [ -z "${man_selected}" ] || [ -z "${file}" ]; then
		echo -e >&2 "Please, specify a man page to export and a file to save it to: ${name} -o man_page /path/to/file\nTry '${name} --help' for more information."
		exit 1
	fi

	save_to_file
}

# Definition of the save function: Save the man page to a PDF file named "man_<command>.pdf" in the current directory
save() {
	file="man_${man_selected}.pdf"

	if [ -z "${man_selected}" ]; then
		menu
	fi

	save_to_file
}


# Execute the different functions depending on the option
case "${option}" in
	"")
		menu
	;;
	-o|--output)
		output
	;;
	-O|--save)
		save
	;;
	-h|--help)
		help
	;;
	-V|--version)
		version
	;;
	*)
		if [ "${option:0:1}" == "-" ]; then
			invalid_option
		else
			man_selected="${option}"
			print_to_pdf
		fi
	;;
esac
