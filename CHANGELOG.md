# Changelog

All notable changes to this project will be documented in this file.

## [v1.3.3](https://github.com/Antiz96/zaman/releases/tag/v1.3.3) - 2025-02-17

### Styling

- Remove unconventional dots from output ([#70](https://github.com/Antiz96/zaman/pull/70)) - ([a330014](https://github.com/Antiz96/zaman/commit/a330014db2e46f5f7b0ac914536dfa6b94c61391)) by @Antiz96

### Miscellaneous

- *(man)* Don't compress man pages during build ([#69](https://github.com/Antiz96/zaman/pull/69)) - ([3048a2e](https://github.com/Antiz96/zaman/commit/3048a2ed0358ae7c22921b1d8e3f278af404fbb0)) by @Antiz96

## [v1.3.2](https://github.com/Antiz96/zaman/releases/tag/v1.3.2) - 2025-02-07

### Styling

- Add a missing dot in the help msg ([#67](https://github.com/Antiz96/zaman/pull/67)) - ([bcd4b86](https://github.com/Antiz96/zaman/commit/bcd4b86eceafcdff05b113ae6bf3630e0f521c8c)) by @Antiz96

### Miscellaneous

- Get rid of gzip timestamps during build to make Zaman reproducible ([#68](https://github.com/Antiz96/zaman/pull/68)) - ([51efce8](https://github.com/Antiz96/zaman/commit/51efce8d1671e57c4b02ad783923f1446b927456)) by @Antiz96

## [v1.3.1](https://github.com/Antiz96/zaman/releases/tag/v1.3.1) - 2025-01-22

### Documentation

- Update help message and man page ([#66](https://github.com/Antiz96/zaman/pull/66)) - ([a28f3de](https://github.com/Antiz96/zaman/commit/a28f3dee7c29169e03dfdde5999e6194072fbe80)) by @Antiz96

## [v1.3.0](https://github.com/Antiz96/zaman/releases/tag/v1.3.0) - 2025-01-22

### Features

- Use default PDF reader defined in XDG Mime Application (fallback to zathura) ([#65](https://github.com/Antiz96/zaman/pull/65)) - ([40a6f71](https://github.com/Antiz96/zaman/commit/40a6f719070afab8161e7e66ef81c4a1f582e2cf)) by @Antiz96
- Add dynamic shell completions for man pages ([#64](https://github.com/Antiz96/zaman/pull/64)) - ([8586cb4](https://github.com/Antiz96/zaman/commit/8586cb4fccb3ec03ee802e95ccf78dafb704f5be)) by @Antiz96
- Add the `-D / --debug` option ([#63](https://github.com/Antiz96/zaman/pull/63)) - ([28e6917](https://github.com/Antiz96/zaman/commit/28e69175c61b50293678a252c3bef2e7d312bc7d)) by @Antiz96

### Fixes

- Fix script path in Makefile ([#59](https://github.com/Antiz96/zaman/pull/59)) - ([f1d2efb](https://github.com/Antiz96/zaman/commit/f1d2efbf858ef5bdd48843caea189b31a95891ea)) by @Antiz96

### Documentation

- Add the 'License' section to the table of content in the README ([#60](https://github.com/Antiz96/zaman/pull/60)) - ([2dabea9](https://github.com/Antiz96/zaman/commit/2dabea9565bc5a530d055a7dd62d6433fc7b3621)) by @Antiz96
- Overall documentation rework ([#56](https://github.com/Antiz96/zaman/pull/56)) - ([a08403a](https://github.com/Antiz96/zaman/commit/a08403ad9d096a3a0745bdf31cf74e3fc8fac3b3)) by @Antiz96

### Styling

- *(CONTRIBUTING.md)* Fix typos ([#61](https://github.com/Antiz96/zaman/pull/61)) - ([848e796](https://github.com/Antiz96/zaman/commit/848e796331f4b271eeca4f05b6b8e663f23e6985)) by @Antiz96

### Miscellaneous

- Update mdl rules in CI ([#62](https://github.com/Antiz96/zaman/pull/62)) - ([5902d50](https://github.com/Antiz96/zaman/commit/5902d506cbfcc44a6b479bdb0de1ee37ed4aa65d)) by @Antiz96
- Add Release instructions + Changelog ([#58](https://github.com/Antiz96/zaman/pull/58)) - ([d83b65c](https://github.com/Antiz96/zaman/commit/d83b65c65d0727f8f52b8fe444db4c020f166fe3)) by @Antiz96
- Add simple unit tests with 'bats' ([#57](https://github.com/Antiz96/zaman/pull/57)) - ([7d42d37](https://github.com/Antiz96/zaman/commit/7d42d37d95cb8bfa876f65037ff09ab069214cc6)) by @Antiz96
- Add issues / pull requests templates ([#55](https://github.com/Antiz96/zaman/pull/55)) - ([51a234f](https://github.com/Antiz96/zaman/commit/51a234f71b1de71fa0d328b82ab29b82d0ad984d)) by @Antiz96
- Add CONTRIBUTING.md ([#54](https://github.com/Antiz96/zaman/pull/54)) - ([cc25e41](https://github.com/Antiz96/zaman/commit/cc25e4165098a34081664d8e1e058bcdf6484ffe)) by @Antiz96

## [v1.2.3](https://github.com/Antiz96/zaman/releases/tag/v1.2.3) - 2024-04-13

### Features

- Add shell completions for bash, zsh and fish by @Antiz96 in <https://github.com/Antiz96/zaman/pull/50>

### Improvements

- Use complete version ref in man page by @Antiz96 in <https://github.com/Antiz96/zaman/pull/46>
- Add a trust path for users by @Antiz96 in <https://github.com/Antiz96/zaman/pull/47>
- Precise that Zaman is licensed under GPL3+ by @Antiz96 in <https://github.com/Antiz96/zaman/pull/48>
- Add comments to the Makefile by @Antiz96 in <https://github.com/Antiz96/zaman/pull/49>

## [v1.2.2](https://github.com/Antiz96/zaman/releases/tag/v1.2.2) - 2023-06-10

- Add a GitHub action to run shellcheck on pull requests by @Antiz96 in <https://github.com/Antiz96/zaman/pull/26>
- Add basic but useful information at the top of the main script by @Antiz96 in <https://github.com/Antiz96/zaman/pull/27>
- Refactoring the script with functions by @Antiz96 in <https://github.com/Antiz96/zaman/pull/28>
- Add the '-m / --menu' option by @Antiz96 in <https://github.com/Antiz96/zaman/pull/29>
- Add a clear and concise help message (instead of simply printing the man page) for the --help option by @Antiz96 in <https://github.com/Antiz96/zaman/pull/30>
- Use separated exit codes for each type of errors by @Antiz96 in <https://github.com/Antiz96/zaman/pull/31>
- Bump the script to v1.2.2 by @Antiz96 in <https://github.com/Antiz96/zaman/pull/32>

## [v1.2.1](https://github.com/Antiz96/zaman/releases/tag/v1.2.1) - 2023-05-13

- Run the zathura process in the background by @Antiz96 in <https://github.com/Antiz96/zaman/pull/24>

## [v1.2.0](https://github.com/Antiz96/zaman/releases/tag/v1.2.0) - 2023-03-22

- Let the users choose their preferred pdf backend between [zathura-pdf-poppler] and [zathura-pdf-mupdf] by @Antiz96 in <https://github.com/Antiz96/zaman/pull/19>
- Add rofi support by @Antiz96 in <https://github.com/Antiz96/zaman/pull/20>
- Print a proper error if no man page or file path is specified when using the output option by @Antiz96 in <https://github.com/Antiz96/zaman/pull/21>
- Stop opening PDF man pages in fullscreen mode by default by @Antiz96 in <https://github.com/Antiz96/zaman/pull/22>
- Bump the main script to v1.2.0 by @Antiz96 in <https://github.com/Antiz96/zaman/pull/23>

## [v1.1.0](https://github.com/Antiz96/zaman/releases/tag/v1.1.0) - 2022-09-21

- **New feature**: The `-o`/`--output` flag allows you to save the PDF converted man page to a file of your choice (requested in #15 by @SomethingGeneric)

```bash
zaman -o ls ~/Documents/man/ls.pdf
```

- **New feature**: The `-O`/`--save` flag allows you to quickly save the PDF converted man page to a local file named `man_<command>.pdf` (requested in #15 by @SomethingGeneric)  

You can either select the man page to save as a PDF file via the dmenu list:

```bash
zaman -O
```

Or you can specify the man page to save as a PDF file directly in the command:

```bash
zaman -O ls
```

- Added the `-o`/`-O` flags' documentation in both README.md and the `zaman` man page.
- Added various little improvements to the script.

## [v1.0.2](https://github.com/Antiz96/zaman/releases/tag/v1.0.2) - 2022-09-14

- The repo has been restructured to better suit best practices.
- New install/uninstall method: The install.sh and uninstall.sh scripts have been removed in favor of a Makefile; which is cleaner, more standard and way easier to maintain.
- The wiki pages has been merged directly into the README to centralize information (the wiki has therefore been deleted).
- The "dependencies" (and overall) documentation has been improved.
- A LICENSE file has been added to the repo (GLP3).

## [v1.0.1](https://github.com/Antiz96/zaman/releases/tag/v1.0.1) - 2022-08-09

- Added groff as a dependency (also "groff-perl" and "perl(Compress:Zlib)" for RedHat/Fedora based distros)
- Various typo fixes

## [v1.0.0](https://github.com/Antiz96/zaman/releases/tag/v1.0.0) - 2022-08-08

- Initial Release

<!-- generated by git-cliff -->
