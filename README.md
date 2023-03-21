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
It also allows you to navigate through all the man pages available on your system via [Rofi](https://davatorium.github.io/rofi/) or [Dmenu](https://tools.suckless.org/dmenu/).

## Installation

### AUR

Install the [zaman](https://aur.archlinux.org/packages/zaman) AUR package.  
Make sure you also have a zathura PDF backend installed (either [zathura-pdf-poppler](https://archlinux.org/packages/community/x86_64/zathura-pdf-poppler/) or [zathura-pdf-mupdf](https://archlinux.org/packages/community/x86_64/zathura-pdf-mupdf/)) as well as a dynamic menu (either [rofi](https://archlinux.org/packages/community/x86_64/rofi/) or [dmenu](https://archlinux.org/packages/community/x86_64/dmenu/)).

### From Source

Install dependencies:  
  
- Replace `zathura-pdf-poppler` by `zathura-pdf-mupdf` if you prefer to use the `mupdf` backend.
- Replace `rofi` by `dmenu` if you prefer to use that (it's called `suckless-tools` on Debian/Ubuntu).

#### Debian/Ubuntu

```
sudo apt install man-db groff zathura zathura-pdf-poppler rofi
```

#### RedHat/Fedora

```
sudo dnf install man-db groff groff-perl "perl(Compress::Zlib)" zathura zathura-pdf-poppler rofi
```

#### Arch Linux

```
sudo pacman -S man-db groff zathura zathura-pdf-poppler rofi
```

#### Gentoo

```
sudo emerge man-db groff zathura zathura-pdf-poppler rofi
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

Run the `zaman` command in your terminal to display a list of all the available man pages on your system (via [Rofi](https://davatorium.github.io/rofi/) or [Dmenu](https://tools.suckless.org/dmenu/)), allowing you to search for the one to print as a PDF.  

![zaman](https://user-images.githubusercontent.com/53110319/226755165-3080f232-cb9f-4d5b-aa06-b18032cd8eaa.png)

Alternatively, you can directly specify the man page to open in the command (example below with the "ls" man page):  

![zaman_cmd](https://user-images.githubusercontent.com/53110319/226755190-9d005cbe-b893-4b96-b6c1-db97a70f3a4b.png)

The man page will open in fullscreen as a PDF file in [Zathura](https://pwmt.org/projects/zathura/). Just press `q` to quit, as you would normally do when reading a man page:  

![zaman_pdf](https://user-images.githubusercontent.com/53110319/226755232-e8cdadd6-e0a4-473b-857e-3b3273f4ad0f.png)

You can save a specific man page in a PDF file called "man_`command`.pdf" in your current directory with the `-O` (or `--save`) option *(if you run `zaman -O` without specifying a man page to save, `zaman` will offer you to select one via rofi/dmenu)*:  

![zaman_save](https://user-images.githubusercontent.com/53110319/226755247-637c4827-9940-43e4-88e9-4978152e4cc4.png)

Alternatively, you can specify the destination file with the `-o` (or `--output`) option:  

![zaman_output](https://user-images.githubusercontent.com/53110319/226755261-cb4bf006-fae3-48ea-8187-8c4e1772b7b0.png)


## Documentation

See the documentation below:  
  
*The documentation is also available as a man page and with the "--help" option.*  
*Run `man zaman` or `zaman --help` (or even `zaman zaman` actually :smile:) after you've installed the `zaman` package.*  
    
### SYNOPSIS

zaman [OPTION] [MAN PAGE]

### DESCRIPTION

A simple tool that prints (or saves) man pages in a PDF file via [Zathura](https://pwmt.org/projects/zathura/) for an easier reading.  
It also allows you to navigate through all the man pages available on your system via [Rofi](https://davatorium.github.io/rofi/) or [Dmenu](https://tools.suckless.org/dmenu/).

### OPTIONS

If no option is passed, print the list of all the available man pages on the system in a dynamic menu (rofi or dmenu); allowing you to search for the one to print as a PDF.  
  
Alternatively, you can directly specify the man page to open in the command (example below with the "ls" man page):  
```
zaman ls
```

#### -o, --output "file"

Write the output to "file". Useful to save the PDF converted man page to a file of your choice:
```
zaman -o ls ~/Documents/man/ls.pdf
```

#### -O, --save

Write the output to a PDF file named "man_`command`.pdf" inside your current directory. Useful to quickly save the PDF converted man page to a file:
  
You can either select the man page to save as a PDF file via the rofi/dmenu list:
```
zaman -O
```
  
Or you can directly specify the man page to save as a PDF file in the command:
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

if problems (user tried to open a non-existing man page, user does not have any dynamic menu installed, ...)

## Contributing

You can raise your issues, feedbacks and suggestions in the [issues tab](https://github.com/Antiz96/zaman/issues).  
[Pull requests](https://github.com/Antiz96/zaman/pulls) are welcomed as well!
