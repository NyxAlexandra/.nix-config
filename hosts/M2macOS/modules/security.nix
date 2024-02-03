{ pkgs, ... }: {
  security = {
    # Touch ID for `sudo`
    pam.enableSudoTouchIdAuth = true;
  };
}