{ ... }: {
  home-manager = {
    enable = true;
    useGlobalPkgs = true;
    useUserPackages = true;
    users."alexandra" = import ./alexandra;
  };
}
