#!/bin/bash

pkgname="zaman"
url="https://github.com/Antiz96/zaman"

echo -e "${pkgname} is going to be uninstalled\n"

sudo rm -f "/usr/local/bin/${pkgname}" || exit 1
sudo rm -f "/usr/local/share/man/man1/${pkgname}.1.gz" || exit 1

echo -e "${pkgname} has been successfully uninstalled\nPlease, visit ${url} for more information"
