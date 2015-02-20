with (import <nixpkgs> {}).pkgs;
let pkg = haskellngPackages.callPackage
            ({ mkDerivation, aeson, base, bytestring, classy-prelude
             , classy-prelude-conduit, classy-prelude-yesod, conduit, containers
             , data-default, directory, fast-logger, file-embed, hjsmin, hspec
             , http-conduit, monad-control, monad-logger, persistent
             , persistent-postgresql, persistent-template, resourcet, safe
             , shakespeare, stdenv, template-haskell, text, time, transformers
             , unordered-containers, vector, wai-extra, wai-logger, warp, yaml
             , yesod, yesod-auth, yesod-core, yesod-form, yesod-static
             , yesod-test 
             }:
             mkDerivation {
               pname = "xyz";
               version = "0.0.0";
               src = ./.;
               isLibrary = true;
               isExecutable = true;
               buildDepends = [
                 aeson base bytestring classy-prelude classy-prelude-conduit
                 classy-prelude-yesod conduit containers data-default directory
                 fast-logger file-embed hjsmin http-conduit monad-control
                 monad-logger persistent persistent-postgresql persistent-template
                 safe shakespeare template-haskell text time unordered-containers
                 vector wai-extra wai-logger warp yaml yesod yesod-auth yesod-core
                 yesod-form yesod-static 
               ];
               testDepends = [
                 base classy-prelude classy-prelude-yesod hspec monad-logger
                 persistent persistent-postgresql resourcet transformers yesod
                 yesod-core yesod-test
               ];
               license = stdenv.lib.licenses.unfree;
             }) {};
in
  pkg.env
