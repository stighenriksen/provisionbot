with (import "/home/stig/dev/nixpkgs" {}).pkgs;
(haskellngPackages.callPackage ./. {}).env
