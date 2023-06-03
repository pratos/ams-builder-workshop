{
  description = "Packaging for AI Builder Workshop, Amsterdam";

  inputs = {
    nixpkgs = { url = "github:NixOS/nixpkgs/nixpkgs-unstable"; };
    flake-utils = { url = "github:numtide/flake-utils"; };
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };

        locales = pkgs.glibcLocales;
        python310 = pkgs.python3Minimal;
        lxml = pkgs.python3Packages.lxml;
        poetry = pkgs.poetry;
        gum = pkgs.gum;

      in
      with pkgs;
      {
        devShell = pkgs.mkShell {
          buildInputs = [
            locales
            python310
            lxml
            poetry
            gum
          ];
        };
      }
    );
}
