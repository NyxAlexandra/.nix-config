{ pkgs, ... }: {
  programs.kitty.enable = true;
  xdg.configFile."kitty".source = ./kitty;
  home.packages = with pkgs; [ zsh ];
}
