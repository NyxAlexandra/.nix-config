{ pkgs, ... }: {
  programs.kitty.enable = true;
  xdg.configFile."kitty".source = ./kitty;
}
