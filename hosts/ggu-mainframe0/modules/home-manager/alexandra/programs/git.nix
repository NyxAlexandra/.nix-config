{ pkgs, ... }: {
  programs.git = {
    enable = true;
    userName = "Alexandra Reaves";
    userEmail = "nyxalexandra@proton.me";
    signing = {
      signByDefault = true;
      key = "F3CE7E4CB256E3AF"; # acquired with `gpg --list-secret-keys --keyid-format=long`
    };
    delta.enable = true; # Better diff highlighting
    aliases = {
      a = "add";
      c = "commit";
      l = "log";
      r = "reset";
      s = "status";
      d = "diff";
    };
    extraConfig.push.autoSetupRemote = true;
  };

  home.packages = with pkgs; [ gnupg ];
}
