{ pkgs, ... }: {
  imports = [
    ./home-manager

    ./console.nix
    ./environment.nix
    ./hardware.nix
    ./programs.nix
    ./services.nix
    ./xdg.nix
  ];
}