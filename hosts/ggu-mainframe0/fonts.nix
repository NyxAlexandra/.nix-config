{ pkgs, ... }: {
  fonts = {
    packages = with pkgs; [
        noto-fonts
    ];
    fontDir.enable = true;
  };
}
