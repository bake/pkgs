# pkgs

This is an unstable nix-channel for testing purposes.

## Usage

```
$ nix-channel --add https://github.com/bake/pkgs/archive/master.tar.gz bake
$ nix-channel --update
$ nix-env -iA bake.goread
```
