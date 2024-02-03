{ pkgs, ... }: {
  home = {
    file."Library/Application Support/nushell/config.nu".source = ./config.nu;
    file."Library/Application Support/nushell/env.nu".source = ./env.nu;
    packages = with pkgs; [ nushell fzf zoxide ];
  };
  programs.nushell.enable = true;
}