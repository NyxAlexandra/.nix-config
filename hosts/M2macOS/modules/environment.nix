{ pkgs, ... }: {
  environment = {
    systemPackages = with pkgs; [
      neovim
      helix
      rustup
      neofetch
      nushell
      nixpkgs-fmt
    ];

    # Items to add to the path
    systemPath = [
      "~/.cargo/bin"
    ];

    # Allowed shells
    shells = with pkgs; [ nushell ];

    # darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

    variables = {
      "EDITOR" = "nvim";

      # Taken from `brew shellenv`
      "HOMEBREW_PREFIX" = "/opt/homebrew";
      "HOMEBREW_CELLAR" = "/opt/hoebrew/Cellar";
      "HOMEBREW_REPOSITORY" = "/opt/homebrew";
      "PATH" = "/opt/homebrew/bin/:/opt/homebrew/sbin:~/.cargo/bin:\${PATH+:$PATH}";
      "MANPATH" = "/opt/homebrew/share/man\${MANPATH+:$MANPATH}:";
      "INFOPATH" = "/opt/homebrew/share/info:\${INFOPATH:-}";
      "CC" = "/usr/bin/clang";
    };
  };
}
