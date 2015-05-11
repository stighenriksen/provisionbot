with (import "/home/stig/nixpkgs" {}).pkgs;
(haskellngPackages.callPackage ./. {})
