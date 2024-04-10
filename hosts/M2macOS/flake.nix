{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nix-darwin = {
      url = "github:lnl7/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {
    nixpkgs,
    nix-darwin,
    home-manager,
    ...
  }: let
    system = "aarch64-darwin";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    darwinConfigurations."M2macOS" = nix-darwin.lib.darwinSystem {
      inherit system;
      specialArgs = { inherit inputs; };
      modules = [
        home-manager.darwinModules.home-manager
        
        ./environment.nix
        ./fonts.nix
        ./home-manager.nix
        ./homebrew.nix
        ./networking.nix
        ./nix.nix
        ./programs.nix
        ./security.nix
        ./services.nix
        ./system.nix
        ./users.nix
      ];
    };
  };
}
