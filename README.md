# Zaman

A simple tool that prints man pages in a PDF file (with vim keys support) for an easier reading.

## Table of contents
* [Description](#description)
* [Dependencies](#dependencies)
* [Installation](#installation)
* [Usage](#usage)
* [Documentation](#documentation)
* [Contributing](#contributing)

## Description

A simple tool that prints man pages in a PDF file (with vim keys support) via [Zathura](https://pwmt.org/projects/zathura/) for an easier reading.  
It also allows you to select the man page to display through a list of all the available man pages on your system via [Dmenu](https://tools.suckless.org/dmenu/).

## Dependencies

Zaman depends on:
- [man-db](http://man-db.nongnu.org/) to get the man pages
- [groff](https://www.gnu.org/software/groff/) to convert man pages into PDF format
- [zathura](https://pwmt.org/projects/zathura/) and `zathura-pdf-poppler` to print the PDF file 
- [dmenu](https://tools.suckless.org/dmenu/) to display the list of available man pages   
  
For **RedHat/Fedora** based distros, it also depends on `groff-perl` and `perl(Compress::Zlib)`.  
  
The [make](https://www.gnu.org/software/make/) package is necessary to install/uninstall `zaman`, install it via your package manager if needed.

### Installing dependencies

#### Debian/Ubuntu

```
sudo apt install man-db groff zathura zathura-pdf-poppler suckless-tools
```

#### RedHat/Fedora

```
sudo dnf install man-db groff groff-perl "perl(Compress::Zlib)" zathura zathura-pdf-poppler dmenu
```

#### Arch Linux

*You don't need to install dependencies if you install `zaman` via the [AUR](#aur) as it already takes care of them*

```
sudo pacman -S man-db groff zathura zathura-pdf-poppler dmenu
```

#### Gentoo

```
sudo emerge man-db groff zathura zathura-pdf-poppler dmenu
```

## Installation

### AUR

Arch (or Arch based distro) users can install the [zaman](https://aur.archlinux.org/packages/zaman "zaman AUR package") AUR package.

### From Source

After [installing dependencies](#installing-dependencies) on your system, download the archive of the [latest stable release](https://github.com/Antiz96/zaman/releases/latest) and extract it.  
*Alternatively, you can clone this repository via `git`.*  
  
To install `zaman`, go into the extracted/cloned directory and run the following command:
```
sudo make install
```
   
To uninstall `zaman`, go into the extracted/cloned directory and run the following command:  
```
sudo make uninstall
```

## Usage

Simply run the `zaman` command in your terminal to open the menu list of all the available man pages on your system, allowing you to search and select the man page you want to read.  
You can also specify the man page to open directly in the command, like so:  
```
zaman ls
```
  
Check the screenshots below for more information.

### Screenshot

Run the `zaman` command in your terminal to display a list/menu in which you can navigate through all the available man pages on your system with your keyboard (up and down arrow keys and type search):    

![zaman](https://user-images.githubusercontent.com/53110319/183697489-cd2b8c1e-334c-42f3-be8d-2c0b4a7e002c.png)

Alternatively, you can specify the man page to open directly in the command (example below with the "ls" man page):  

![zaman_with_argument](https://user-images.githubusercontent.com/53110319/183697495-25951c0d-fc93-4606-a9bf-712739272460.png)

The man page will open in fullscreen as a PDF file in [Zathura](https://pwmt.org/projects/zathura/) (which has vim keys and mousewheel support). Just press `q` to quit, as you would normally do when reading a man page:  

![zaman_ls](https://user-images.githubusercontent.com/53110319/183697494-2c268494-64cd-414f-a942-cac7a87580ba.png)

## Documentation

See the documentation below:

*The documentation is also available as a man page and with the "--help" function.*  
*Run `man zaman` or `zaman --help` (or even `zaman zaman` actually :smile:) after you've installed the **zaman** package.*  
    
### SYNOPSIS

zaman [OPTION] [MAN PAGE TO DISPLAY]

### DESCRIPTION

A simple tool that prints man pages in a PDF file (with vim keys support) via [Zathura](https://pwmt.org/projects/zathura/) for an easier reading.  
It also allows you to select the man page to display through a list of all the available man pages on your system via [Dmenu](https://tools.suckless.org/dmenu/).

### OPTIONS

If no option is passed, print the list of all the available man pages on the system, allowing you to search and select the one to print as a PDF.  
  
You can also specify the man page to open directly in the command:
```
zaman ls
```

#### -o, --output "file"

Write output to "file". Useful to save the PDF converted man page to a file of your choice:
```
zaman -o ls ~/Documents/man/ls.pdf
```

#### -O, --save

Write output to a local file named "man_`command`.pdf". Useful to quickly save the PDF converted man page to a local file:
```
zaman -O ls
``` 

#### -v, --version

Print the current version

#### -h, --help

Print the help

### EXIT STATUS

#### 0

if OK

#### 1

if problems (user tried to open a non-existing man page...)

## Contributing

You can raise your issues, feedbacks and ideas in the [issues tab](https://github.com/Antiz96/zaman/issues).  
[Pull requests](https://github.com/Antiz96/zaman/pulls) are welcomed as well !
