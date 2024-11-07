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

    helix = {
      url = "github:mattwparas/helix/steel-event-system";      
      inputs.nixpkgs.follows = "nixpkgs";
    };
    steel = {
      url = "github:mattwparas/steel";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {
    nixpkgs,
    nix-darwin,
    home-manager,
    helix,
    steel,
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
        ./home-manager
        ./homebrew.nix
        ./networking.nix
        ./nix.nix
        ./programs
        ./security.nix
        ./services.nix
        ./system.nix
        ./users.nix

        {
          environment = {
            variables = {
              "STEEL_LSP_HOME" = "$HOME/.config/steel-language-server";
            };
            systemPackages = with pkgs; [
              racket
              chickenPackages_5.chickenEggs.scmfmt

              (helix.packages.${system}.helix-unwrapped.overrideAttrs (prev: {
                postInstall = prev.postInstall + ''
                  mv $out/bin/hx $out/bin/hxs
                '';
              }))
              (steel.packages.${system}.steel.overrideAttrs (prev: {
                cargoBuildFlags = prev.cargoBuildFlags + " -p steel-language-server";
              }))
            ];
          };
        }
      ];
    };
  };
}
