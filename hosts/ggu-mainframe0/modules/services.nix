{ pkgs, ... }: {
  services = {
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
    xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome = {
        enable = true;
        extraGSettingsOverridePackages = with pkgs; [ gnome.mutter ];
        # fractional scaling support
        extraGSettingsOverrides = ''
          [org.gnome.mutter]
          experimental-features=['scale-monitor-framebuffer']
        '';
      };
    };
    flatpak.enable = true;
    auto-cpufreq.enable = true;
    dbus.enable = true;
    openssh.enable = true;
    printing.enable = true;
  };
}