{ pkgs, ... }: {
  imports = [
    ./home-manager

    ./boot.nix
    ./console.nix
    ./environment.nix
    ./fonts.nix
    ./hardware.nix
    ./i18n.nix
    ./programs.nix
    ./services.nix
    ./xdg.nix
  ];
}