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

Zaman depends on [groff](https://www.gnu.org/software/groff/) to convert man pages into PDF format, [zathura](https://pwmt.org/projects/zathura/) (and zathura-pdf-poppler) to print the PDF file and [dmenu](https://tools.suckless.org/dmenu/) to display the list of available man pages.  
For RedHat/Fedora based distros, it also depends on "groff-perl" and the "zlib" library for perl : "perl(Compress::Zlib)".

## Usage

Simply launch the `zaman` command in your terminal to open the menu list of all the man pages available on your system, allowing you to search and select the man page you want to read.  
You can also specify the man page to open directly in the command, like so :  
```
zaman ls
```
  
Check the screenshots below for more information.

### Screenshot

Type the `zaman` command in your terminal to display a list/menu in which you can navigate through all the available man pages on your system with your keyboard (up and down arrow keys and search by typing) :    

![zaman](https://user-images.githubusercontent.com/53110319/183697489-cd2b8c1e-334c-42f3-be8d-2c0b4a7e002c.png)

Alternatively, you can specify the man page to open directly in the command (example below with the "ls" man page) :  

![zaman_with_argument](https://user-images.githubusercontent.com/53110319/183697495-25951c0d-fc93-4606-a9bf-712739272460.png)

The man page will open in fullscreen as a PDF file in [Zathura](https://pwmt.org/projects/zathura/) (which has vim keys and mousewheel support). Just press "q" to quit, as you would normally do when reading a man page :  

![zaman_ls](https://user-images.githubusercontent.com/53110319/183697494-2c268494-64cd-414f-a942-cac7a87580ba.png)

## Documentation

Refer to the [Wiki Documentation Page](https://github.com/Antiz96/zaman/wiki/Documentation "Wiki Documentation Page").
<br>
<br>
The full documentation is also available as a man page and with the "--help" function. 
<br>
Type `man zaman` or `zaman --help` after you've installed the **zaman** package.
