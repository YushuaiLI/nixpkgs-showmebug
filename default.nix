{
  pkgs ? import <nixpkgs> {}
}:

with pkgs;

let
  packages = rec {
    myapp = callPackage ./pkgs/myapp {};

    inherit pkgs; # similar to `pkgs = pkgs;` This lets callers use the nixpkgs version defined in this file.
  };
in
  packages
