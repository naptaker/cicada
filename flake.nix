{
  description = "Scores from Cicada by Naptaker";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";

    gridly = {
      flake = false;
      url = "github:openlilylib/gridly";
    };

    naptaker = {
      flake = false;
      url = "github:naptaker/naptaker/lilypond-2.24";
    };

    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    oll-core = {
      flake = false;
      url = "github:openlilylib/oll-core";
    };

    git-hooks-nix.url = "github:cachix/git-hooks.nix";

    treefmt-nix.url = "github:numtide/treefmt-nix";
  };

  outputs = inputs@{ flake-parts, nixpkgs, self, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      flake = {
        overlays.default = _final: prev: rec {
          myLilypond = prev.stdenv.mkDerivation {
            pname = "lilypond";
            inherit (prev.lilypond-with-fonts) version;
            dontUnpack = true;
            dontBuild = true;
            nativeBuildInputs = [ prev.makeWrapper ];
            propagatedBuildInputs = [
              prev.lilypond-with-fonts
              oll-lib
            ];
            installPhase = ''
              makeWrapper ${prev.lilypond-with-fonts}/bin/lilypond $out/bin/lilypond \
                --add-flags "--include=${oll-lib}"
            '';
          };

          oll-lib = prev.stdenv.mkDerivation {
            pname = "oll-lib";
            version = "20250213";
            dontUnpack = true;
            dontBuild = true;
            installPhase = with inputs; ''
              mkdir -p $out
              cp -rv ${oll-core} $out/oll-core
              cp -rv ${gridly} $out/gridly
              cp -rv ${naptaker} $out/naptaker
            '';
          };
        };
      };

      imports = [
        inputs.git-hooks-nix.flakeModule
        inputs.treefmt-nix.flakeModule
      ];

      systems = [
        "x86_64-linux"
      ];

      perSystem = { config, pkgs, system, ... }: {
        _module.args.pkgs = import nixpkgs {
          config.allowUnfreePredicate = pkg:
            nixpkgs.lib.hasPrefix "cicada" (nixpkgs.lib.getName pkg);
          overlays = [
            self.overlays.default
          ];
          inherit system;
        };

        devShells.default = with pkgs; mkShell {
          LILYPOND_SHARE_DIR = "${lilypond-with-fonts}/share";

          inputsFrom = [
            config.pre-commit.devShell
          ];

          nativeBuildInputs = [
            (frescobaldi.override {
              lilypond = myLilypond;
            })
            myLilypond
            timidity
          ];
        };

        packages =
          let
            cicada = pkgs.callPackage ./. {
              lilypond = pkgs.myLilypond;
            };
          in
          {
            inherit (pkgs) myLilypond oll-lib;
            inherit cicada;
            default = cicada;
          } // cicada.passthru;

        pre-commit.settings.hooks = {
          convco.enable = true;
          editorconfig-checker.enable = true;
          treefmt.enable = true;
        };

        treefmt = {
          programs = {
            deadnix.enable = true;
            nixpkgs-fmt.enable = true;
            prettier.enable = true;
          };
        };
      };
    };
}
