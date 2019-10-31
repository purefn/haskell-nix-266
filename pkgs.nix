{
  extras = hackage:
    { packages = { test = ./test.nix; }; };
  resolver = "lts-13.5";
  modules = [ ({ lib, ... }: { packages = {}; }) { packages = {}; } ];
  }