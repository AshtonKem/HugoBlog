{
  description = "Ashton Blog";
  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-21.05;
    flake-utils.url = github:numtide/flake-utils;
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
        {
          packages.website = pkgs.stdenv.mkDerivation rec {
            pname = "static-website";
            version = "2023-02-23";
            src = ./.;
            nativeBuildInputs = [ pkgs.hugo ];
            buildPhase = "";
            installPhase = "";
          };
          defaultPackage = self.packages.${system}.website;
          devShell = pkgs.mkShell {
            packages = with pkgs; [
              hugo
            ];
          };
        }
    );
}

