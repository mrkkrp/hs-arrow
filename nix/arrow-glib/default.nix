{ stdenv, fetchurl, arrow-cpp, autoconf, gobject-introspection, pkg-config }:

stdenv.mkDerivation rec {
  name = "arrow-glib-${version}";
  version = "0.12.0";

  src = fetchurl {
    url = "https://archive.apache.org/dist/arrow/arrow-${version}/apache-arrow-${version}.tar.gz";
    sha256 = "163s4i2cywq95jgrxbaq48qwmww0ibkq61k1aad4w9z9vpjfgnil";
  };

  sourceRoot = "apache-arrow-${version}/c_glib";

  nativeBuildInputs = [
    autoconf
    pkg-config
  ];

  buildInputs = [
    arrow-cpp
    gobject-introspection

    # gtk-doc-tools autoconf-archive libgirepository1.0-dev meson ninja-build

  ];

}
