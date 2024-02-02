{ pkgs, ... }: {
  imports = [
    ./git.nix
    ./helix.nix
    ./vscode.nix
  ];

  programs.home-manager.enable = true;
}
