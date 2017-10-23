with import <nixpkgs> {};

let
allianceSrc = fetchgit {
  url = "https://www-soc.lip6.fr/git/alliance.git";
  rev = "89305746a64ca65b41f1657c272b63dc0c438ed4";
  sha256 = "1qkp7fvmyq91617zg270adsvr9xymicrxvhcy4wxf83m0vajymhp";
};
in
stdenv.mkDerivation {
  name = "alliance";
  src = allianceSrc;
  builder = ./builder.sh;
  buildInputs = [
    autoconf
    automake
    libtool
    xorg.libX11
    xorg.libXt
    xorg.libXpm
    xorg.libXaw
    motif
    bison
    flex
    xfig
    transfig
    imagemagick
    texlive.combined.scheme-full
  ];
}
