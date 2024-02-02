{ pkgs, ... }: {
  imports = [
    ./git.nix
    ./helix.nix
    ./vscode.nix
    ./zellij.nix
  ];

  programs.home-manager.enable = true;
}
