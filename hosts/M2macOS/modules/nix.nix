{ pkgs, ... }: {
  nix = {
    distributedBuilds = true;

    buildMachines = [{
      hostName = "ssh://buildmachine0";
      sshUser = "builder";
      sshKey = "/var/root/.ssh/id_builder";
      systems = [ "aarch64-linux" ];
      maxJobs = 6;
      supportedFeatures = [ "big-parallel" "kvm" "nixos-test" ];
    }];

    extraOptions = ''
      experimental-features = nix-command flakes
      auto-optimise-store = true
      extra-platforms = x86_64-darwin aarch64-darwin
      keep-outputs = true
      keep-derivations = true
    '';

    settings.trusted-users = [ "root" "alex" ];
  };
}