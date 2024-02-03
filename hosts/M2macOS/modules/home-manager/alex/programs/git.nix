{ pkgs, ... }: {
  programs.git = {
    enable = true;
    userName = "NyxAlexandra";
    userEmail = "nyxalexandra@proton.me";
    delta.enable = true; # Diff highlighting
    signing = {
      signByDefault = true;
      # Acquired with `gpg --list-secret-keys --keyid-format=long`
      key = "0xA2F97DEE82E3F0C2";
    };
    aliases = {
      a = "add";
      c = "commit";
      l = "log";
      r = "reset";
      s = "status";
      d = "diff";
    };
    extraConfig = {
      push.autoSetupRemote = "true";
    };
  };
}