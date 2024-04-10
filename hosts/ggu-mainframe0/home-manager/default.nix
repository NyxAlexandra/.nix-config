{ ... }: {
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users."alexandra" = import ./alexandra;
  };
}
