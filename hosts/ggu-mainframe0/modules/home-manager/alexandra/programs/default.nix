{ pkgs, ... }: {
  imports = [
    ../../../../../modules/home-manager/alacritty.nix
    ../../../../../modules/home-manager/git.nix
    ../../../../../modules/home-manager/helix.nix
    ../../../../../modules/home-manager/kitty.nix
    ../../../../../modules/home-manager/nushell.nix
    ../../../../../modules/home-manager/zellij.nix
    ./vscode.nix
  ];
  programs.home-manager.enable = true;
}
