{ stdenv, buildGoPackage, fetchFromGitHub }:

buildGoPackage {
  name = "mri";

  goPackagePath = "github.com/bake/mri";

  src = fetchFromGitHub {
    owner = "bake";
    repo = "mri";
    rev = "438a0b611ec00f1452fcc017a6ee4c07a07dd119";
    sha256 = "1ykk304jyk6ki1xbvh46dyf055xyj0ibqs4ss64f1c7lsb00g9wx";
  };

  modSha256 = "0sjjj9z1dhilhpc8pq4154czrb79z9cm044jvn75kxcjv6v5l2m5";

  subPackages = [ "./cmd/mri" ];

  goDeps = ./deps.nix;

  meta = with stdenv.lib; {
    description = "Decoder for MangaRock images (.mri)";
    homepage = "https://github.com/bake/mri";
    maintainers = with maintainers; [ bake ];
  };
}
