{ pkgs, ... }: {
  imports = [
    ../../../../../modules/home-manager/alacritty.nix
    ((import ../../../../../modules/home-manager/git.nix) {
      signingKey = "0x9A36EB0099244C91";
    })
    ../../../../../modules/home-manager/kitty.nix
    ../../../../../modules/home-manager/nushell.nix
    ../../../../../modules/home-manager/zellij.nix

    ./gpg.nix
    ./direnv.nix
  ];
}
