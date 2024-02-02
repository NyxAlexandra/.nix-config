{ pkgs, ... }: {
  programs.alacritty.enable = true;
  xdg.configFile."alacritty".source = ./alacritty;
}
