{ lib, buildGoModule, fetchFromGitHub }:

buildGoModule rec {
  name = "mdl-${version}";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "bake";
    repo = "mdl";
    rev = "v${version}";
    sha256 = "0ch7zqry7rl4vwxf2ki23b4168f6mpzl91slgsixyhi4f85cf9ai";
  };

  modSha256 = "1zn9xg9m735scnjc3l4sdw07fqgld4dl53nvl10h9znn6r1vscn7";

  buildFlagsArray = "-ldflags=-X main.version=${version}";

  meta = {
    description = "Think of youtube-dl but for mangas";
    homepage = "https://github.com/bake/mdl";
    license = lib.licenses.gpl3;
    maintainers = with import ../../maintainers.nix; [ bake ];
  };
}
