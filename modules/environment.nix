{ pkgs, ... }: {
  environment = {
    systemPackages = with pkgs; [
      git
      helix
      gnome.gnome-tweaks
      noto-fonts
      noto-fonts-cjk
      (nerdfonts.override { fonts = [ "Noto" "Lilex" ]; })
      alacritty
      rustup
      papirus-icon-theme
      adw-gtk3
      gcc
      hyfetch
      rust-analyzer
      wl-clipboard
      htop
      firefox
      gnomeExtensions.just-perfection
      zig
      element-desktop
      wofi
      waybar
      lldb
    ];
    variables = {
      "EDITOR" = "hx";
      "MOZ_ENABLE_WAYLAND" = "1";
    };
    # add `~/.local/bin` to `$PATH`
    localBinInPath = true;
  };
}