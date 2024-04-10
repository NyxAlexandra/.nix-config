{ ... }: {
  homebrew = {
    enable = true;
    taps = [
      "koekeishiya/formulae"
    ];
    brews = [
      "pinentry-mac" # passphrase entry for `gpg`
      "docker"
      "podman"
      "yabai"
      "skhd"
    ];
    casks = [
      "visual-studio-code"
      "rectangle"
      "ticktick"
      "bitwarden"
      "docker"
      "podman-desktop"
      "shottr"
      "iterm2"
      "utm"
      "discord"
      "spotify"
      "gimp"
    ];
  };
}
