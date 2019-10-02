{ pkgs ? import <nixpkgs> {}
, ghc ? pkgs.ghc
}:

with pkgs;

haskell.lib.buildStackProject {
  name = "hs-arrow";
  inherit ghc;
  LANG = "en_US.UTF-8";
  buildInputs = [
    (pkgs.callPackage ./nix/arrow-glib {})
    zlib
    pkg-config
    gobject-introspection
    arrow-cpp
  ];
}
