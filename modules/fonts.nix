{ pkgs, ... }: {
    fonts = {
        fonts = with pkgs; [
            noto-fonts
        ];

        fontDir.enable = true;
    };
}
