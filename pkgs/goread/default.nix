{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  name = "goread-${version}";
  version = "1.0.1";

  src = fetchFromGitHub {
    owner = "bake";
    repo = "goread";
    rev = "v${version}";
    sha256 = "0mjfrp991pkwa8p6hd23n5la96zi8s3s3kbzg6v1sz39lw5rkvd9";
  };

  modSha256 = "1hayqycj5wnmv71hrv69kgdh6s3rah0ifxvbz922ccdh9fv1gzrg";

  buildFlagsArray = "-ldflags=-X main.version=${version}";

  meta = with lib; {
    description = "Static RSS reader generator";
    homepage = "https://github.com/bake/goread";
    license = licenses.gpl3;
    maintainers = with import ../../maintainers.nix; [ bake ];
  };
}
