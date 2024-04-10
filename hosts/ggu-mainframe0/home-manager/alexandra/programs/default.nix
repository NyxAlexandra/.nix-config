{ pkgs, ... }: {
  imports = [
<<<<<<< HEAD
    ../../../../../../modules/home-manager/alacritty.nix
    ((import ../../../../../../modules/home-manager/git.nix) {
      signingKey = "F3CE7E4CB256E3AF";
    })
    ../../../../../../modules/home-manager/helix.nix
    ../../../../../../modules/home-manager/kitty.nix
    ../../../../../../modules/home-manager/nushell.nix
    ../../../../../../modules/home-manager/zellij.nix
    ./vscode.nix
  ];
  programs.home-manager.enable = true;
=======
    ../../../../../modules/home-manager/alacritty.nix
    ((import ../../../../../modules/home-manager/git.nix) {
      signingKey = "F3CE7E4CB256E3AF";
    })
    ../../../../../modules/home-manager/helix.nix
    ../../../../../modules/home-manager/kitty.nix
    ../../../../../modules/home-manager/nushell.nix
    ../../../../../modules/home-manager/zellij.nix
    ./vscode.nix
  ];
>>>>>>> 6d53c56e3749848ea4516a03d26ecef455825052
}
