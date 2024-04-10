{ pkgs, ... }: {

  imports = [
    ./programs
  ];

  home = {
    username = "alexandra";
    homeDirectory = "/home/alexandra";
    stateVersion = "23.05";

    # sets a singular cursor to use,
    # resolves issues in which some
    # applications draw an incorrect
    # cursor
    pointerCursor = {
      name = "Adwaita";
      package = pkgs.gnome.adwaita-icon-theme;
      size = 24;
      x11 = {
        enable = true;
        defaultCursor = "Adwaita";
      };
    };
  };
}
