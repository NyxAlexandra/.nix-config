{ pkgs, ... }: {
  environment = {
    systemPackages = with pkgs; [
      git
      helix
      gnome.gnome-tweaks
      noto-fonts
      noto-fonts-cjk
      nerdfonts
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
      zig
      element-desktop
      wofi
      waybar
      lldb
      kitty
      zls
      neovim
      vscode
      protonvpn-gui
      protonvpn-cli
    ];
    variables = {
      "EDITOR" = "hx";
      "MOZ_ENABLE_WAYLAND" = "1";
    };
    # add `~/.local/bin` to `$PATH`
    localBinInPath = true;
  };
}
