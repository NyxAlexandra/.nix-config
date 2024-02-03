{ pkgs, ... }: {
  imports = [
    ./alacritty.nix
    ./git.nix
    ./helix.nix
    ./nushell.nix
    ./vscode.nix
    ./zellij.nix
  ];
  programs.home-manager.enable = true;
}
