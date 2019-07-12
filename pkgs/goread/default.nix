{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  name = "goread-${version}";
  version = "1.1.0";

  src = fetchFromGitHub {
    owner = "bake";
    repo = "goread";
    rev = "v${version}";
    sha256 = "1hzrbdqma4hmfflw1fpfc2s8dw9d727qx8v9issafybx91l6933w";
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
