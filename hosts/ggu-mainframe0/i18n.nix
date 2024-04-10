{ pkgs, ... }: {
<<<<<<< HEAD
  i18n.inputMethod = {
    enabled = "ibus";
    ibus = {
      panel =
        "${pkgs.plasma5Packages.plasma-desktop}/lib/libexec/kimpanel-ibus-panel";
      engines = with pkgs.ibus-engines; [
        anthy
      ];
    };
=======
  i18n = {
    inputMethod = {
      enabled = "fcitx5";
      ibus.engines = with pkgs.ibus-engines; [ mozc ];
      fcitx5 = {
        plasma6Support = true;
        waylandFrontend = true;
        addons = with pkgs; [ fcitx5-mozc ];
      };
    };
    supportedLocales = [ "all" ];
>>>>>>> 6d53c56e3749848ea4516a03d26ecef455825052
  };
}
