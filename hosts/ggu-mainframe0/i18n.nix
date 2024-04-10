{ pkgs, ... }: {
  i18n.inputMethod = {
    enabled = "ibus";
    ibus = {
      panel =
        "${pkgs.plasma5Packages.plasma-desktop}/lib/libexec/kimpanel-ibus-panel";
      engines = with pkgs.ibus-engines; [
        anthy
      ];
    };
  };
}
