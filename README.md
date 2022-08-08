# Pman

A simple tool that prints man pages in a PDF file (with vim keys support) for an easier reading.

## Table of contents
* [Description](#description)
* [Installation](#installation)
* [Dependencies](#dependencies)
* [Usage](#usage)
* [Documentation](#documentation)

## Description

A simple tool that prints man pages in a PDF file (with vim keys support) via [Zathura](https://pwmt.org/projects/zathura/) for an easier reading, which also allows you to select the man page to display through a list generated via [Dmenu](https://tools.suckless.org/dmenu/).

## Installation

### AUR

Arch (or Arch based distro) users can install the [pman](https://aur.archlinux.org/packages/pman "pman AUR package") AUR package.

### From Source

#### Installation

Launch the following command in your terminal to execute the install script (requires "curl" and "sudo") :
```
curl -s https://raw.githubusercontent.com/Antiz96/pman/main/install.sh | bash
```

#### Update

Simply re-execute the install script (requires "curl" and "sudo") :
```
curl -s https://raw.githubusercontent.com/Antiz96/pman/main/install.sh | bash
```

#### Uninstalling

Launch the following command in your terminal to execute the uninstall script :
```
curl -s https://raw.githubusercontent.com/Antiz96/pman/main/uninstall.sh | bash
```

## Dependencies

Arch-Update depends on [zathura](https://pwmt.org/projects/zathura/) (and zathura-pdf-poppler) to print the PDF file and [dmenu](https://tools.suckless.org/dmenu/) to display the list of available man pages.

## Usage

Simply launch the `pman` command in your terminal to open the menu list of all the man pages available on your system, allowing you to search and select the man page you want to read.  
You can also specify the man page to open directly in the command, like so :  
```
pman ls
```
  
Check the screenshots below for more information.

### Screenshot

## Documentation

Refer to the [Wiki Documentation Page](https://github.com/Antiz96/pman/wiki/Documentation "Wiki Documentation Page").
<br>
<br>
The full documentation is also available as a man page and with the "--help" function. 
<br>
Type `man pman` or `pman --help` after you've installed the **pman** package.
