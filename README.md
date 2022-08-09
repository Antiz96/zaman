# Zaman

A simple tool that prints man pages in a PDF file (with vim keys support) for an easier reading.

## Table of contents
* [Description](#description)
* [Installation](#installation)
* [Dependencies](#dependencies)
* [Usage](#usage)
* [Documentation](#documentation)

## Description

A simple tool that prints man pages in a PDF file (with vim keys support) via [Zathura](https://pwmt.org/projects/zathura/) for an easier reading.  
It also allows you to select the man page to display through a list of all the available man pages on your system generated via [Dmenu](https://tools.suckless.org/dmenu/).

## Installation

### AUR

Arch (or Arch based distro) users can install the [zaman](https://aur.archlinux.org/packages/zaman "zaman AUR package") AUR package.

### From Source

#### Installation

Launch the following command in your terminal to execute the install script (requires "curl" and "sudo") :
```
curl -s https://raw.githubusercontent.com/Antiz96/zaman/main/install.sh | bash
```

#### Update

Simply re-execute the install script (requires "curl" and "sudo") :
```
curl -s https://raw.githubusercontent.com/Antiz96/zaman/main/install.sh | bash
```

#### Uninstalling

Launch the following command in your terminal to execute the uninstall script :
```
curl -s https://raw.githubusercontent.com/Antiz96/zaman/main/uninstall.sh | bash
```

## Dependencies

Arch-Update depends on [groff](https://www.gnu.org/software/groff/) to convert man pages into PDF format, [zathura](https://pwmt.org/projects/zathura/) (and zathura-pdf-poppler) to print the PDF file and [dmenu](https://tools.suckless.org/dmenu/) to display the list of available man pages.  
For RedHat/Fedora based distros, it also depends on "groff-perl" and the "zlib" library for perl : "perl(Compress::Zlib).

## Usage

Simply launch the `zaman` command in your terminal to open the menu list of all the man pages available on your system, allowing you to search and select the man page you want to read.  
You can also specify the man page to open directly in the command, like so :  
```
zaman ls
```
  
Check the screenshots below for more information.

### Screenshot

Coming Soon

## Documentation

Refer to the [Wiki Documentation Page](https://github.com/Antiz96/zaman/wiki/Documentation "Wiki Documentation Page").
<br>
<br>
The full documentation is also available as a man page and with the "--help" function. 
<br>
Type `man zaman` or `zaman --help` after you've installed the **zaman** package.
