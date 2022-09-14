pkgname=zaman

PREFIX ?= /usr/local

.PHONY: all check install uninstall

all:

check:
	src/script/${pkgname}.sh --help

install:
	install -Dm 755 "src/script/${pkgname}.sh" "${DESTDIR}/${PREFIX}/bin/${pkgname}"
	
	gzip -c "doc/man/${pkgname}.1" > "${pkgname}.1.gz"
	install -Dm 644 "${pkgname}.1.gz" "${DESTDIR}/${PREFIX}/share/man/man1/${pkgname}.1.gz"
	rm -f "${pkgname}.1.gz"
	
	install -Dm 644 README.md "${DESTDIR}/${PREFIX}/share/doc/${pkgname}/README.md"

uninstall:
	rm -f "${DESTDIR}/${PREFIX}/bin/${pkgname}"
	rm -f "${DESTDIR}/${PREFIX}/share/man/man1/${pkgname}.1.gz"
	rm -rf "${DESTDIR}/${PREFIX}/share/doc/${pkgname}/"
