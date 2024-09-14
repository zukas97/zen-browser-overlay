# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

#version="1.0.0-a.39"

DESCRIPTION="Fast and Beutiful Firfox-based Web Browser"
HOMEPAGE="https://zen-browser.app"
SRC_URI="https://github.com/zen-browser/desktop/releases/download/${P}/zen.linux-generic.tar.bz2"

LICENSE="MPL-2"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
	mkdir -p /opt/apps/zen
	chmod 777 /opt/apps/zen
	tar -xf zen.linux-generic.tar.bz2 -C /opt/apps/zen
}

src_install() {
	cp ${FILESDIR}/zen.desktop /usr/share/applications/
	cp ${FILESDIR}/zen /usr/bin/

}
