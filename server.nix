# Generic server configuration.

{ config, pkgs, ... }:
{
    # Import relevant configs
    imports = [
        ./users
        ./roles/sshd.nix
    ];

    # Set leap-smearing time servers
    networking.timeServers = [ "time.google.com" ];

    # Defeat lid switches on laptops
    services.logind.lidSwitch = "ignore";

    # Enable automatic upgrades
    system.autoUpgrade.enable = true;
}
