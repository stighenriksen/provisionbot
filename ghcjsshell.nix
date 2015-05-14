with (import <nixpkgs> {}).pkgs;
let pkg = haskell-ng.packages.ghcjs.callPackage
            ({ mkDerivation, ghcjs-base, base
             }:
             mkDerivation {
               pname = "provisionbot";
               version = "0.0.0";
               src = ./.;
               isLibrary = true;
               isExecutable = true;
               buildDepends = [
                 ghcjs-base base
               ];
               testDepends = [ 
               ];
               license = stdenv.lib.licenses.unfree;
             }) {};
in
  pkg.env
