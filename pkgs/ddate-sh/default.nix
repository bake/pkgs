{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation {
  name = "ddate.sh";

  src = fetchFromGitHub {
    owner = "bake";
    repo = "ddate.sh";
    rev = "64115f37d0c8850056dd0a68caa11f9cb447a4a0";
    sha256 = "0lhpjj776aw0zjg78p140bgfl88bjghiv0mii6rlkp2n25skik2l";
  };

  installPhase = ''
    mkdir -p $out/bin
    cp ddate.sh $out/bin/
    chmod +x $out/bin/ddate.sh
  '';

  meta = {
    description = "ddate-equivalent to date";
    homepage = "https://github.com/bake/ddate.sh";
    maintainers = with import ../../maintainers.nix; [ bake ];
  };
}
