{ pkgs ? import <nixpkgs> {}
, ghc ? pkgs.ghc
}:

(pkgs.callPackage ./nix/arrow-glib {})
