{ pkgs, ... }: {
  fonts = {
    # create `~/.local/share/fonts`
    fontDir.enable = true;
    fonts = with pkgs; [
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      noto-fonts-extra
			nerdfonts
    ];
  };
}
