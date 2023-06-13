{ pkgs, ... }: {
  imports = [
    ./home-manager

    ./boot.nix
    ./console.nix
    ./environment.nix
    ./hardware.nix
    ./programs.nix
    ./services.nix
    ./xdg.nix
  ];
}