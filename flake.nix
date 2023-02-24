{
  description = "Ashton Blog";
  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-21.05;
    flake-utils.url = github:numtide/flake-utils;
    resume.url = github:AshtonKem/resume;
  };

  outputs = { self, nixpkgs, flake-utils, resume }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
        {
          packages.website = pkgs.stdenv.mkDerivation rec {
            pname = "static-website";
            version = "2023-02-23";
            src = ./.;
            buildInputs = [ resume pkgs.hugo pkgs.git ];
            buildPhase = "hugo";
            installPhase = "cp -r public $out";
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

