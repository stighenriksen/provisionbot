with (import <nixpkgs> {}).pkgs;
let pkg = haskellngPackages.callPackage
            ({ mkDerivation, aeson, base, bytestring, classy-prelude
             , classy-prelude-conduit, classy-prelude-yesod, conduit
             , conduit-extra, containers, data-default, directory, fast-logger
             , file-embed, hjsmin, hspec, http-conduit, monad-control
             , monad-logger, persistent, persistent-sqlite, persistent-template
             , resourcet, safe, shakespeare, stdenv, template-haskell, text
             , time, transformers, unix, unordered-containers, vector, wai-extra
             , wai-logger, warp, yaml, yesod, yesod-auth, yesod-core, yesod-form
             , yesod-static, yesod-test, yesod-bin, nixops
             }:
             mkDerivation {
               pname = "provisionbot";
               version = "0.0.0";
               src = ./.;
               isLibrary = true;
               isExecutable = true;
               buildDepends = [
                 aeson base bytestring classy-prelude classy-prelude-conduit
                 classy-prelude-yesod conduit conduit-extra containers data-default
                 directory fast-logger file-embed hjsmin http-conduit monad-control
                 monad-logger persistent persistent-sqlite persistent-template safe
                 shakespeare template-haskell text time unix unordered-containers
                 vector wai-extra wai-logger warp yaml yesod yesod-auth yesod-core
                 yesod-form yesod-static yesod-bin nixops
               ];
               testDepends = [
                 base hspec monad-logger persistent persistent-sqlite resourcet
                 transformers yesod yesod-core yesod-test
               ];
               license = stdenv.lib.licenses.unfree;
             }) {};
in
  pkg.env
