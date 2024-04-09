{ pkgs, ... }: {
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
  };
}
