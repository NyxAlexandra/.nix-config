{ pkgs, ... }: {
  console = {
    font = "ter-v32n";
    packages = with pkgs; [ terminus_font ];
    useXkbConfig = true; # use xkbOptions in tty.
  };
}