{ pkgs, ... }: {
  imports = [
    ./git.nix
    ./helix.nix
  ];

  programs.home-manager.enable = true;
}
