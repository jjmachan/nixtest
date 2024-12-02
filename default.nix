with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "nix-project";
    src = ./.;
    buildInputs = [
      nodejs
    ];
    installPhase = ''
      # npm install
      echo "hello" > $out
      '';
  }
