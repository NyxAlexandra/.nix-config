{ pkgs, ... }: {
  imports = [
    ../../../../../modules/home-manager/alacritty.nix
    ((import ../../../../../modules/home-manager/git.nix) {
      signingKey = "0xA2F97DEE82E3F0C2";
    })
    ../../../../../modules/home-manager/helix.nix
    ../../../../../modules/home-manager/kitty.nix
    ../../../../../modules/home-manager/nushell.nix
    ../../../../../modules/home-manager/zellij.nix
    ./programs/gpg.nix
    ./programs/direnv.nix
  ];
}
