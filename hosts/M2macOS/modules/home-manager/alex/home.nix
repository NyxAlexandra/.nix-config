{ pkgs, ... }: {
  imports = [
    ./programs.nix
    ./config
  ];

  home = {
    stateVersion = "22.05";
  };
}