{ pkgs, ... }: {
  imports = [
    ./alacritty.nix
    ./git.nix
    ./helix.nix
    ./vscode.nix
    ./zellij.nix
  ];

  programs.home-manager.enable = true;
}
