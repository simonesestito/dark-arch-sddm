
# Maintainer: Raul Rodrigo Segura <raurodse@gmail.com>
pkgname=sddm-theme-simple-dark
pkgver=0.1
pkgrel=1
epoch=
pkgdesc="Simple theme for SDDM"
arch=('x86_64')
url="https://github.com/simonesestito/dark-arch-sddm"
license=('GPL')
groups=()
depends=()
makedepends=()
checkdepends=()
optdepends=()
provides=()
conflicts=()
replaces=()
backup=()
options=()
install=
changelog=
#source=("https://github.com/simonesestito/dark-arch-sddm/archive/master.zip")
noextract=()
md5sums=()
validpgpkeys=()

package() {
	pathtoinstall="/usr/share/sddm/themes/dark-sddm-theme"
	install -d ${pkgdir}$pathtoinstall
	cp -r "../base/"* ${pkgdir}$pathtoinstall
	cp ../options/logo/arch.png ${pkgdir}${pathtoinstall}/resources/logo.png
}
