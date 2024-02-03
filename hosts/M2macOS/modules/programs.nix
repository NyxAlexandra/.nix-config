{ pkgs, ... }: {
  imports = [
    # ./programs/gnupg.nix
  ];

  programs = {
    zsh.enable = true;
  };
}