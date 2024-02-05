{ pkgs, ... }: {
  imports = [
    ./alacritty.nix
    ./git.nix
    ./helix.nix
    ./kitty.nix
    ./nushell.nix
    ./vscode.nix
    ./zellij.nix
  ];
  programs.home-manager.enable = true;
}
