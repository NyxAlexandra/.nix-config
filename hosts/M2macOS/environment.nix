{ pkgs, ... }: {
  environment = {
    systemPackages = with pkgs; [
      neovim
      helix
      rustup
      neofetch
      nushell
      nixpkgs-fmt
      google-java-format
      kotlin
      ktfmt
      ktlint
      kotlin-language-server
    ];

    systemPath = [
      "/run/current-system/sw/bin"
      "/opt/homebrew/bin"
      "~/.cargo/bin"
    ];

    shells = with pkgs; [ nushell ];

    variables = {
      "EDITOR" = "hx";
      "SHELL" = "nu";

      # taken from `brew shellenv`
      "HOMEBREW_PREFIX" = "/opt/homebrew";
      "HOMEBREW_CELLAR" = "/opt/hoebrew/Cellar";
      "HOMEBREW_REPOSITORY" = "/opt/homebrew";
      "MANPATH" = "/opt/homebrew/share/man\${MANPATH+:$MANPATH}:";
      "INFOPATH" = "/opt/homebrew/share/info:\${INFOPATH:-}";
      "CC" = "/usr/bin/clang";
    };
  };
}
