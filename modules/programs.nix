{ pkgs, ... }: {
  programs = {
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
    dconf.enable = true;
    hyprland.enable = true;
  };
}
