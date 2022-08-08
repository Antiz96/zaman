#!/bin/bash

pkgname="pman"
url="https://github.com/Antiz96/pman"
latest_release=$(curl -s https://raw.githubusercontent.com/Antiz96/pman/main/latest_release.txt)

checksum=$(curl -Ls "${url}/releases/download/v${latest_release}/sha256sum.txt")
current_version=$("${pkgname}" -v 2>/dev/null)

package() {

	package_manager=$( (ls /usr/bin/apt || ls /usr/bin/dnf || ls /usr/bin/pacman || ls /usr/bin/emerge) 2>/dev/null | awk -F/ '{print $4}' )

	if [ -z "${package_manager}" ]; then
		echo -e "This script only supports the following package manager to handle dependencies :\napt\ndnf\npacman\nemerge\n\nYour package manager is not supported\nYou'll need to install the following packages yourself to make \"pman\" work correctly (if you don't have them installed already)\nzathura\zathura-pdf-poppler\ndmenu"
	fi
	
	if ! command -v zathura > /dev/null ; then
		echo "Installing dependencies via ${package_manager} : zathura"
		
		case "${package_manager}" in
			apt)
				sudo apt install -y zathura > /dev/null || exit 1
			;;
			dnf)
				sudo dnf install -y zathura > /dev/null || exit 1
			;;
			pacman)
				sudo pacman -S --noconfirm zathura > /dev/null || exit 1
			;;
			emerge)
				sudo emerge zathura > /dev/null || exit 1
			;;
		esac
	fi

	case "${package_manager}" in
		apt)
			if ! apt list --installed | grep -q zathura-pdf-poppler ; then
				echo "Installing dependencies via ${package_manager} : zathura-pdf-poppler"
				sudo apt install -y zathura-pdf-poppler > /dev/null || exit 1
			fi
		;;
		dnf)
			if ! dnf list installed | grep -q zathura-pdf-poppler ; then
				echo "Installing dependencies via ${package_manager} : zathura-pdf-poppler"
				sudo dnf install -y zathura-pdf-poppler > /dev/null  || exit 1
			fi
		;;
		pacman)
			if ! pacman -Q | grep -q zathura-pdf-poppler ; then
				echo "Installing dependencies via ${package_manager} : zathura-pdf-poppler"
				sudo pacman -S --noconfirm zathura-pdf-poppler > /dev/null || exit 1
			fi
		;;
		emerge)
			if ! qlist -I | grep -q zathura-pdf-poppler ; then
				echo "Installing dependencies via ${package_manager} : zathura-pdf-poppler"
				sudo emerge zathura-pdf-poppler > /dev/null || exit 1
			fi
		;;
	esac


	if ! command -v dmenu > /dev/null ; then
		echo "Installing dependencies via ${package_manager} : dmenu"
		
		case "${package_manager}" in
			apt)
				sudo apt install -y suckless-tools > /dev/null || exit 1
			;;
			dnf)
				sudo dnf install -y dmenu > /dev/null || exit 1
			;;
			pacman)
				sudo pacman -S --noconfirm dmenu > /dev/null || exit 1
			;;
			emerge)
				sudo emerge dmenu > /dev/null || exit 1
			;;
		esac
	fi

	curl -Ls "${url}/archive/v${latest_release}.tar.gz" -o "/tmp/${pkgname}-${latest_release}.tar.gz" || { echo -e >&2 "An error occured during the download of the ${pkgname}'s archive\n\nPlease, verify that you have a working internet connexion and curl installed on your machine\nIf the problem persists anyway, you can open an issue at ${url}/issues" ; exit 1; }

	if ! echo "${checksum}" "/tmp/${pkgname}-${latest_release}.tar.gz" | sha256sum -c --status -; then
		echo -e >&2 "\n${pkgname}'s archive integrity check failed\nAborting\n\nPlease, verify that you have a working internet connexion and curl installed on your machine\nIf the problem persists anyway, you can open an issue at ${url}/issues"
		rm -f "/tmp/${pkgname}-${latest_release}.tar.gz"
		exit 1
	else
		echo -e "\n${pkgname}'s archive integrity validated\nProceeding to installation..."
	fi

	tar -xf "/tmp/${pkgname}-${latest_release}.tar.gz" -C /tmp/ || exit 1
	chmod +x "/tmp/${pkgname}-${latest_release}/src/bin/${pkgname}.sh" || exit 1
	gzip "/tmp/${pkgname}-${latest_release}/src/man/${pkgname}.1" || exit 1
	sudo cp -f "/tmp/${pkgname}-${latest_release}/src/bin/${pkgname}.sh" "/usr/local/bin/${pkgname}" || exit 1
	sudo mkdir -p /usr/local/share/man/man1 || exit 1
	sudo cp -f "/tmp/${pkgname}-${latest_release}/src/man/${pkgname}.1.gz" /usr/local/share/man/man1/ || exit 1
	rm -rf "/tmp/${pkgname}-${latest_release}" "/tmp/${pkgname}-${latest_release}.tar.gz" || exit 1
}

if ! command -v "${pkgname}" > /dev/null ; then
	echo "${pkgname} is going to be installed"
	package
	echo -e "\n${pkgname} has been successfully installed\nPlease, visit ${url} for more information\n\nThanks for downloading !"
	exit 0
elif [ "${current_version}" != "${latest_release}" ]; then
	echo "A new update is available for ${pkgname}"
	package
	echo -e "\n${pkgname} has been successfully updated to version ${latest_release}\nPlease, visit ${url} for more information"
	exit 0
else
	echo "${pkgname} is up to date -- reinstallation"
	package
	echo -e "\n${pkgname} has been successfully reinstalled\nPlease, visit ${url} for more information"
	exit 0
fi
