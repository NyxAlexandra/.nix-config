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
      displayManager.sddm.enable = true;
    };
    desktopManager.plasma6.enable = true;
    flatpak.enable = true;
    auto-cpufreq.enable = true;
    dbus.enable = true;
    openssh.enable = true;
    printing.enable = true;
  };
}
