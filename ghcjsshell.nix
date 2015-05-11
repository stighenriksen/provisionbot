with (import <nixpkgs> {}).pkgs;
(haskell-ng.packages.ghcjs.callPackage ./. {}).env
