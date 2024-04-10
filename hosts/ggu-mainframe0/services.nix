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
<<<<<<< HEAD
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
=======
      displayManager.sddm.enable = true;
    };
    desktopManager.plasma6.enable = true;
>>>>>>> 6d53c56e3749848ea4516a03d26ecef455825052
    flatpak.enable = true;
    auto-cpufreq.enable = true;
    dbus.enable = true;
    openssh.enable = true;
    printing.enable = true;
  };
<<<<<<< HEAD
}
=======
}
>>>>>>> 6d53c56e3749848ea4516a03d26ecef455825052
