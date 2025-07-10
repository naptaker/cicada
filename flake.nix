{
  description = "Scores from Cicada by Naptaker";

  inputs = {
    emacs-overlay = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:nix-community/emacs-overlay";
    };

    flake-parts.url = "github:hercules-ci/flake-parts";

    git-hooks-nix.url = "github:cachix/git-hooks.nix";

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

    treefmt-nix.url = "github:numtide/treefmt-nix";
  };

  outputs = inputs@{ flake-parts, nixpkgs, self, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      flake = {
        overlays.default = _final: prev: rec {
          myLilypond = prev.lib.appendToName "with-fonts-and-oll" (prev.symlinkJoin {
            inherit (prev.lilypond) meta name version;

            paths = [ prev.lilypond ] ++ prev.openlilylib-fonts.all;

            nativeBuildInputs = [ prev.makeWrapper ];

            postBuild = ''
              for p in $out/bin/*; do
                  wrapProgram "$p" \
                      --add-flags "--include=${oll-lib}" \
                      --set LILYPOND_DATADIR "$out/share/lilypond/${prev.lilypond.version}"
              done
            '';
          });

          oll-lib = prev.stdenv.mkDerivation {
            pname = "oll-lib";
            version = "2025-06-05";
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
            inputs.emacs-overlay.overlay
            self.overlays.default
          ];
          inherit system;
        };

        devShells.default = with pkgs; mkShell {
          FONTCONFIG_FILE = makeFontsConf {
            fontDirectories = [
              nerd-fonts.iosevka
            ];
          };

          LILYPOND_SHARE_DIR = "${myLilypond}/share";

          inputsFrom = [
            config.pre-commit.devShell
          ];

          nativeBuildInputs = [
            (
              emacsWithPackagesFromUsePackage {
                alwaysEnsure = true;
                config = ./emacs.el;
                extraEmacsPackages = _epkgs: [
                  myLilypond
                ];
              }
            )
            # (frescobaldi.override {
            #   lilypond = myLilypond;
            # })
            myLilypond
            nixd
            nix-output-monitor
            process-compose
            python3Packages.pywatchman
            timidity
            watchman
          ];
        };

        packages =
          let
            cicada = pkgs.callPackage ./. {
              lilypond = pkgs.myLilypond;
            };
          in
          {
            inherit cicada;
            default = cicada;
            inherit (pkgs) myLilypond oll-lib;
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
