{ pkgs, ... }: {
  programs.gnupg = {
    agent = {
      enable = true;
      pinentryFlavor = "tty";
    };
  };
  environment.systemPackages = with pkgs; [ gnupg pinentry ];
}