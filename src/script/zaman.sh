#!/bin/bash

#Current version
version="1.1.0"

#If the argument passed to the "zaman" command matches an available man page, print it to a PDF file via "zathura"
if man -k . | awk '{print $1}' | grep -iq ^"${1}"$ ; then
	man -Tpdf "${1}" | zathura --mode=fullscreen -
	exit 0
else
	#If the argument passed to the "zaman" command does not match an available man page, rename the $1 var to "option" just to make the script more readable/less complex
	option="${1}"

	case "${option}" in
		#If no option is passed to the "zaman" command, print the list of available man pages through "rofi" or "dmenu"
		"")
			if command -v rofi > /dev/null; then
				man_selected=$(man -k . | awk '{print $1}' | rofi -dmenu -sort)
			elif command -v dmenu > /dev/null; then
				man_selected=$(man -k . | awk '{print $1}' | dmenu -l 15)
			else
				echo -e >&2 "A dynamic menu is required to print the list of available man pages\nPlease, install rofi or dmenu"
				exit 1
			fi
			
			#If the selected/inputted man page exists, print it to a PDF file via "zathura"
			if man -k . | awk '{print $1}' | grep -iq ^"${man_selected}"$ ; then
				man -Tpdf "${man_selected}" | zathura --mode=fullscreen -
				exit 0
			#If the selected/inputted man page does not exists, print an error
			else
				man "${man_selected}"
				echo >&2 "Try 'zaman --help' for more information."
				exit 1
			fi
		;;
		#If the -o (or --output) option is passed to the "zaman" command, save the specified man page to the specified PDF file
		-o|--output)
			man_selected="${2}"
			file="${3}"
			
			if man -k . | awk '{print $1}' | grep -iq ^"${man_selected}"$ ; then
				#If the specified file does not exists, create it and save the specified man page rendered as a PDF in it
				if [ ! -f "${file}" ]; then
					man -Tpdf "${man_selected}" > "${file}"
					echo "The ${man_selected} man page has been saved to the ${file} file"
					exit 0
				#If the specified file already exists, ask for the user's confirmation to overwrite its content
				else
					echo "The \"${file}\" file already exists."
					read -rp $'Do you want to overwrite its content? [y/N] ' answer

					case "${answer}" in
						[Yy])
							man -Tpdf "${man_selected}" > "${file}"
							echo -e "\nThe ${man_selected} man page has been saved to the ${file} file"
							exit 0
						;;
						*)
							echo -e >&2 "\nAborting"
							exit 1
						;;
					esac
				fi
			#If the specified man page does not match any available man page, print an error
			else
				man "${man_selected}"
				echo >&2 "Try 'zaman --help' for more information."
				exit 1
			fi
		;;
		#If the -O (or --save) option is passed to the "zaman" command, save the specified man page to a PDF file named "man_<command>.pdf" in the current directory
		-O|--save)
			man_selected="${2}"
			
			#If the man page to save hasn't been specified by the user, print the list of available man pages through "rofi" or "dmenu"
			if [ -z "${man_selected}" ]; then
				if command -v rofi > /dev/null; then
					man_selected=$(man -k . | awk '{print $1}' | rofi -dmenu -sort)
				elif command -v dmenu > /dev/null; then
					man_selected=$(man -k . | awk '{print $1}' | dmenu -l 15)
				else
					echo -e >&2 "A dynamic menu is required to print the list of available man pages\nPlease, install rofi or dmenu"
					exit 1
				fi
			fi

			#If the selected/inputted man page exists, save it to a PDF file named "man_<command>.pdf" in the current directory
			if man -k . | awk '{print $1}' | grep -iq ^"${man_selected}"$ ; then
				file="man_${man_selected}.pdf"
				#If the "man_<command>.pdf" file does not exists, create it and save the specified man page rendered as a PDF in it
				if [ ! -f "${file}" ]; then
					man -Tpdf "${man_selected}" > "${file}"
					echo "The ${man_selected} man page has been saved to the ${file} file"
					exit 0
				#If the specified file already exists, ask for the user's confirmation to overwrite its content
				else
					echo "The ${file} file already exists."
					read -rp $'Do you want to overwrite its content? [y/N] ' answer

					case "${answer}" in
						[Yy])
							man -Tpdf "${man_selected}" > "${file}"
							echo -e "\nThe ${man_selected} man page has been saved to the ${file} file"
							exit 0
						;;
						*)
							echo -e >&2 "\nAborting"
							exit 1
						;;
					esac
				fi
			#If the specified man page does not match any available man page, print an error
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
