{ pkgs, ... }: {
  security = {
    rtkit.enable = true;
    polkit.enable = true;
  };
}