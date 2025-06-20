{ lib
, lilypond
, makeFontsConf
, stdenv
, symlinkJoin
, loglevel ? "info"
  # , CNAME ? "scores.cicada.naptaker.band"
}:
let
  version = builtins.readFile ./VERSION;

  meta = with lib; {
    description = "Scores from Cicada by Naptaker";
    homepage = "https://github.com/naptaker/cicada";
    maintainers = with maintainers; [ yurrriq ];
    license = licenses.cc-by-nc-sa-40;
  };

  inherit (lib) optionalString;

  mkScore = attrs@{ songName, pdfName ? songName, ... }:
    stdenv.mkDerivation
      (
        attrs // {
          pname = "cicada-${songName}";
          inherit pdfName songName version;
          src = ./. + "/songs/${songName}";

          FONTCONFIG_FILE = makeFontsConf { fontDirectories = [ ]; };

          nativeBuildInputs = [
            lilypond
          ];

          enableParallelBuilding = true;

          buildPhase = ''
            install -m644 ${./song.mk} ./Makefile
            install -dm755 $out
          '';

          installFlags = [
            "job-count=$${NIX_BUILD_CORES:-1}"
            "loglevel=${loglevel}"
            "pdfName=${pdfName}"
            "prefix=${placeholder "out"}"
          ];

          postInstall = optionalString (loglevel != "debug") ''
            rm -frv $out/*.log
          '';

          meta = meta // {
            description = "${songName} score from Cicada by Naptaker";
          };
        }
      );
in
symlinkJoin rec {
  name = "cicada-${version}";
  inherit meta version;
  enableParallelBuilding = true;
  passthru = with lib;
    listToAttrs (map (song: nameValuePair (getName song) song) paths);
  paths = with builtins;
    map (songName: mkScore { inherit songName; })
      (attrNames (readDir ./songs));
  # postBuild = ''
  #   ln -s ${writeText "CNAME" CNAME} $out/CNAME
  # '';
}
