{ pkgs, ... }: {
<<<<<<< HEAD
    fonts = {
        fonts = with pkgs; [
            noto-fonts
        ];

        fontDir.enable = true;
    };
=======
  fonts = {
    packages = with pkgs; [
        noto-fonts
    ];
    fontDir.enable = true;
  };
>>>>>>> 6d53c56e3749848ea4516a03d26ecef455825052
}
