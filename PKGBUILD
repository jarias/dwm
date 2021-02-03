# $Id$
# Maintainer: Julio Arias <jarias01@gmail.com>

pkgname=dwm
pkgver=6.2
pkgrel=10
pkgdesc="A dynamic window manager for X"
url="http://dwm.suckless.org"
arch=('i686' 'x86_64')
license=('MIT')
options=(zipman)
depends=('libx11' 'libxinerama' 'libxft' 'freetype2')
source=(http://dl.suckless.org/dwm/dwm-$pkgver.tar.gz patches/dwm-config-1.0.10.patch)
sha256sums=('97902e2e007aaeaa3c6e3bed1f81785b817b7413947f1db1d3b62b8da4cd110e' 'def4b01730a02c81963e17edfad36e6444bde7a62b3113361d026d2fee565715')

prepare() {
  cd "$srcdir/$pkgname-$pkgver"
  patch --forward --strip=1 --input="../../patches/dwm-config-1.0.10.patch"
}

build() {
  cd "$srcdir/$pkgname-$pkgver"
  make X11INC=/usr/include/X11 X11LIB=/usr/lib/X11 FREETYPEINC=/usr/include/freetype2
}

package() {
  cd "$srcdir/$pkgname-$pkgver"
  make DESTDIR="$pkgdir" install
}
