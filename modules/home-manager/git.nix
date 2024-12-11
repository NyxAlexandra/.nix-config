{ signingKey ? null }: { pkgs, ... }: {
  programs.git = {
    enable = true;
    userName = "Alexandra Reaves";
    userEmail = "alexandra+git@reaves.io";
    signing = {
      signByDefault = true;
      # acquired with `gpg --list-secret-keys --keyid-format=long`
      key = "${signingKey}";
    };
    # Better diff highlighting
    delta.enable = true;
    aliases = {
      a = "add";
      c = "commit";
      l = "log";
      r = "reset";
      s = "status";
      d = "diff";
    };
    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = false;
      push.autoSetupRemote = true;
    };
  };

  home.packages = with pkgs; [ gnupg ];
}
