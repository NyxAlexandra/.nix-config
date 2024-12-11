{ pkgs, ... }: {
  imports = [
    ../../../../../modules/home-manager/alacritty.nix
    ((import ../../../../../modules/home-manager/git.nix) {
      signingKey = "538688FEA5D7BB67";
    })
    ../../../../../modules/home-manager/kitty.nix
    ../../../../../modules/home-manager/nushell.nix
    ../../../../../modules/home-manager/zellij.nix

    ./gpg.nix
    ./direnv.nix
  ];
}
