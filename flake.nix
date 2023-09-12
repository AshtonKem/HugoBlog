{
  description = "Ashton Blog";
  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-21.05;
    flake-utils.url = github:numtide/flake-utils;
    hugo-theme = {
      url = github:cntrump/hugo-notepadium;
      flake = false;
    };
    resume = {
      url = github:AshtonKem/resume;
      flake = true;
    };
  };

  outputs = { self, nixpkgs, flake-utils, resume, hugo-theme }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {inherit system;};
      in
        {
          packages.default = pkgs.stdenv.mkDerivation rec {
            pname = "static-website";
            version = "2023-02-23";
            src = ./.;
            buildInputs = [ pkgs.hugo hugo-theme resume ];
            installThemeScript = ''
              mkdir -p themes
              ln -snf "${hugo-theme}" themes/hugo-notepadium
            '';
            configurePhase = installThemeScript;
            buildPhase = ''
              hugo
            '';
            installPhase = ''
              cp -r ${resume} public/resume
              cp -r public $out
            '';
          };


          apps.server = {
            type = "app";
            program = toString (pkgs.writers.writeBash "testing" ''
              ${pkgs.hugo}/bin/hugo server -D
            '');
          };

          apps.release = {
            type = "app";
            program = toString (pkgs.writers.writeBash "release" ''
              ./deploy.sh
            '');
          };


          devShells.default = pkgs.mkShell {
            packages = with pkgs; [
              hugo
            ];
            shellHook = ''
              mkdir -p themes
              ln -snf "${hugo-theme}" themes/hugo-notepadium
            '';
          };
        }
    );
}

