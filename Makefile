pkgname=zaman

PREFIX ?= /usr/local

.PHONY: all install uninstall

all:

install:
	# Install the main script
	install -Dm 755 "src/script/${pkgname}.sh" "${DESTDIR}${PREFIX}/bin/${pkgname}"

	# Install shell completions
	install -Dm 644 "res/completions/${pkgname}.bash" "${DESTDIR}${PREFIX}/share/bash-completion/completions/${pkgname}"
	install -Dm 644 "res/completions/${pkgname}.zsh" "${DESTDIR}${PREFIX}/share/zsh/site-functions/_${pkgname}"
	install -Dm 644 "res/completions/${pkgname}.fish" "${DESTDIR}${PREFIX}/share/fish/vendor_completions.d/${pkgname}.fish"

	# Archive and install man pages
	gzip -c "doc/man/${pkgname}.1" > "${pkgname}.1.gz"
	install -Dm 644 "${pkgname}.1.gz" "${DESTDIR}${PREFIX}/share/man/man1/${pkgname}.1.gz"
	rm -f "${pkgname}.1.gz"

	# Install documentation
	install -Dm 644 README.md "${DESTDIR}${PREFIX}/share/doc/${pkgname}/README.md"

uninstall:
	# Delete the main script
	rm -f "${DESTDIR}${PREFIX}/bin/${pkgname}"

	# Delete man pages
	rm -f "${DESTDIR}${PREFIX}/share/man/man1/${pkgname}.1.gz"

	# Delete documentation
	rm -rf "${DESTDIR}${PREFIX}/share/doc/${pkgname}/"

test:
	# Run the help function of the main script as a simple test
	"src/script/${pkgname}.sh" --help
