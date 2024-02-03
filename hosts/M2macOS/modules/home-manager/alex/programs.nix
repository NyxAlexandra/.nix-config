{ pkgs, ... }: {
  imports = [
    ./programs/git.nix
    ./programs/gpg.nix
    ./programs/direnv.nix
  ];
}