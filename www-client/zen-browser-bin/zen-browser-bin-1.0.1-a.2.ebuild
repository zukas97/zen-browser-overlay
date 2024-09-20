# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8



DESCRIPTION="Fast and Beutiful Firfox-based Web Browser"
HOMEPAGE="https://zen-browser.app"
SRC_URI="https://github.com/zen-browser/desktop/releases/download/${PV}/zen.linux-generic.tar.bz2"

LICENSE="MPL-2"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	mkdir -p /opt/zen
	chmod 777 /opt/zen
	tar -xf zen.linux-generic.tar.bz2 -C ${DESTDIR}/opt/zen
}

src_install() {
	insinto /usr/share/applications
	doins ${FILESDIR}/zen.desktop
	dobin ${FILESDIR}/zen

}
