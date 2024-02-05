{ pkgs, ... }: {
  programs.helix = {
    enable = true;
    settings = {
      theme = "rose_pine";
      editor = {
        auto-format = true;
        gutters = [ "diff" "line-numbers" "spacer" ];
        completion-trigger-len = 1;
        undercurl = true;
        color-modes = true;
        cursorline = true;
        indent-guides = {
          render = true;
          character = "╎";
          idle-timeout = 0;
          auto-format = true;
          bufferline = "multiple";
          cursorline = true;
          middle-click-paste = false;
          scrolloff = 6;
        };
        lsp = {
          display-messages = true;
          display-inlay-hints = false;
        };
        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };
        file-picker.hidden = false;
        statusline = {
          left = [ "mode" "separator" "file-name" ];
          right = [ "position" ];
          separator = "";
          mode.normal = "nor";
          mode.insert = "ins";
          mode.select = "sel";
        };
      };
    };
    # languages = [
    #   {
    #     name = "typst";
    #     scope = "source.typst";
    #     injection-regex = "^typ(st)?$";
    #     file-types = [ "typ" ];
    #     comment-token = "//";
    #     indent = {
    #       tab-width = 2;
    #       unit = "  ";
    #     };
    #     roots = ["typst.toml"];
    #     language-servers = [ "typst-lsp" ];
    #     formatter.command = "typstfmt";
    #     auto-format = false;
    #   }
    # ];
  };
}
