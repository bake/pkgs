{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
  callPackage = pkgs.lib.callPackageWith (pkgs // self);
  self = {
    ddate-sh = callPackage ./pkgs/ddate-sh {};
    goread = callPackage ./pkgs/goread {};
    mri = callPackage ./pkgs/mri {};
  };
in self
