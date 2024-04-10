{ pkgs, ... }: {
  imports = [
    ./programs
  ];

  home = {
    stateVersion = "22.05";
  };
}
