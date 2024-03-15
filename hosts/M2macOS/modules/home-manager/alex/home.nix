{ pkgs, ... }: {
  imports = [
    ./programs.nix
  ];

  home = {
    stateVersion = "22.05";
  };
}
