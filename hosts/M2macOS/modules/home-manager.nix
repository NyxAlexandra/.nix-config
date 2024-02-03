{ pkgs, config, ... }: {
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = false;
    extraSpecialArgs = {};
    users."alex" = import ./home-manager/alex/home.nix;
  };
}