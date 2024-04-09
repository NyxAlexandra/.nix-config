{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/fd281bd6b7d3e32ddfa399853946f782553163b5";
    nixos-apple-silicon.url = "github:tpwrules/nixos-apple-silicon";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { self
    , nixpkgs
    , nixos-apple-silicon
    , home-manager
    , ...
    } @ inputs : let
    # heh
    hostName = "ggu-mainframe0";
    system = "aarch64-linux";
    pkgs = import nixpkgs {
      inherit system;

      config.allowUnfree = true;
      overlays = [
        nixos-apple-silicon.overlays.default
      ];
    };
  in {
    nixosConfigurations."${hostName}" = nixpkgs.lib.nixosSystem {
      inherit system pkgs;

      specialArgs = { inherit inputs system; };
      modules = [
        nixos-apple-silicon.nixosModules.apple-silicon-support
        home-manager.nixosModules.home-manager

        ./hardware-configuration.nix
        ./home-manager
        ./boot.nix
        ./console.nix
        ./environment.nix
        ./fonts.nix
        ./hardware.nix
        ./i18n.nix
        ./programs.nix
        ./services.nix
        ./xdg.nix

        {
          users = {
            mutableUsers = false; # false => only mutable through Nix
            users = {
              root = {
                hashedPassword = "!";  # "!" => effectively disables root login
                home = "/root"; # "/root" => stops creation of files like `.cache/` in `/`
              };
              alexandra = {
                isNormalUser = true;
                shell = pkgs.nushell;
                # acquired with `mkpasswd -m SHA-512 -s`
                hashedPassword =
                  "$6$Iz0opvmMHNfEdP7G$LTI7PuFbmFKbFIsbzxa4UsKJShpxDxFOk4pl/XTUCm.tQiZ1INcKOIPVhR/3NalJYkO53fjKwk.MDdPXnGYQe1";
                extraGroups = [ "wheel" "networkmanager" "video" ];
              };
            };
          };

          networking = { inherit hostName; };

          nix.settings.experimental-features = [ "nix-command" "flakes" ];

          hardware.asahi = {
            peripheralFirmwareDirectory = ./firmware;
            extractPeripheralFirmware = true;
            useExperimentalGPUDriver = true;
          };

          fileSystems = {
            "/".options = [ "subvol=tree" "compress=zstd:1" ];
            "/nix".options = [ "subvol=nix" "compress=zstd:1" "noatime" ];
            "/state".options = [ "subvol=state" "compress=zstd:1" ];
            "/home".options = [ "subvol=home" "compress=zstd:1" ];
            "/var/log".options = [ "subvol=log" "compress=zstd:1" ];
            "/etc".options = [ "subvol=etc" "compress=zstd:1" ];
          };

          boot.loader = {
            systemd-boot.enable = true;
            # U-Boot does not support EFI variables
            efi.canTouchEfiVariables = false;
          };

          system.stateVersion = "23.05";
         }
      ];
    };
  };
}
