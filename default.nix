let
  # nixpkgsRev = https://github.com/NixOS/nixpkgs/archive/68be6bbc31351a4cf5b6431d746dc390ed29c16c.tar.gz;
  nixpkgsRev = https://github.com/NixOS/nixpkgs/archive/master.tar.gz;

  haskellNixRev = https://github.com/input-output-hk/haskell.nix/archive/master.tar.gz;

  pkgs = import (builtins.fetchTarball nixpkgsRev) (import (builtins.fetchTarball haskellNixRev));

  pkgSet = pkgs.haskell-nix.mkStackPkgSet {
    stack-pkgs = import ./pkgs.nix;
    pkg-def-extras = [];
    modules = [];
  };

in
  pkgSet.config.hsPkgs
