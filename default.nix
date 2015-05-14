{ mkDerivation, aeson, base, bytestring, classy-prelude
, classy-prelude-yesod, conduit, conduit-extra, data-default
, directory, fast-logger, file-embed, hjsmin, hspec, http-conduit
, monad-control, monad-logger, persistent, persistent-sqlite
, persistent-template, resourcet, shakespeare, stdenv
, template-haskell, text, transformers, unix, wai-extra, wai-logger
, warp, yaml, yesod, yesod-auth, yesod-core, yesod-form
, yesod-static, yesod-test, nixops
}:
mkDerivation {
  pname = "provisionbot";
  version = "0.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    aeson base bytestring classy-prelude classy-prelude-yesod conduit
    conduit-extra data-default directory fast-logger file-embed hjsmin
    http-conduit monad-control monad-logger persistent
    persistent-sqlite persistent-template shakespeare template-haskell
    text unix wai-extra wai-logger warp yaml yesod yesod-auth
    yesod-core yesod-form yesod-static, nixops
  ];
  testDepends = [
    base hspec monad-logger persistent persistent-sqlite resourcet
    transformers yesod yesod-core yesod-test
  ];
  license = stdenv.lib.licenses.unfree;
}
