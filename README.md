# Zaman

A simple tool that prints man pages in a PDF file (with vim keys support) for an easier reading.

## Table of contents

* [Description](#description)
* [Installation](#installation)
* [Usage](#usage)
* [Documentation](#documentation)
* [Contributing](#contributing)

## Description

A simple tool that prints (or saves) man pages in a PDF file via [Zathura](https://pwmt.org/projects/zathura/) for an easier reading.  
It also allows you to navigate through all the man pages available on your system via [Dmenu](https://tools.suckless.org/dmenu/).

## Installation

### AUR

Install the [zaman](https://aur.archlinux.org/packages/zaman) AUR package.  
Make sure you also have a zathura PDF backend installed (either [zathura-pdf-poppler](https://archlinux.org/packages/community/x86_64/zathura-pdf-poppler/) or [zathura-pdf-mupdf](https://archlinux.org/packages/community/x86_64/zathura-pdf-mupdf/)).

### From Source

Install dependencies:  
  
- Replace `zathura-pdf-poppler` by `zathura-pdf-mupdf` if you prefer to use the `mupdf` backend.

#### Debian/Ubuntu

```
sudo apt install man-db groff zathura zathura-pdf-poppler suckless-tools
```

#### RedHat/Fedora

```
sudo dnf install man-db groff groff-perl "perl(Compress::Zlib)" zathura zathura-pdf-poppler dmenu
```

#### Arch Linux

```
sudo pacman -S man-db groff zathura zathura-pdf-poppler dmenu
```

#### Gentoo

```
sudo emerge man-db groff zathura zathura-pdf-poppler dmenu
```
  
Download the archive of the [latest stable release](https://github.com/Antiz96/zaman/releases/latest) and extract it *(alternatively, you can clone this repository via `git`)*.  
  
To install `zaman`, go into the extracted/cloned directory and run the following command:
```
sudo make install
```
   
To uninstall `zaman`, go into the extracted/cloned directory and run the following command:  
```
sudo make uninstall
```

## Usage

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
  
You can either select the man page to save as a PDF file via the dmenu list:
```
zaman -O
```
  
Or you can specify the man page to save as a PDF file directly in the command:
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

You can raise your issues, feedbacks and suggestions in the [issues tab](https://github.com/Antiz96/zaman/issues).  
[Pull requests](https://github.com/Antiz96/zaman/pulls) are welcomed as well!
