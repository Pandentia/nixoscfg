# Generic server configuration.

{ config, pkgs, ... }:
{
    # Import relevant configs
    imports = [
        ./users
        ./roles/sshd.nix
        ./roles/autoupdate-config.nix
    ];

    # Set leap-smearing time servers
    networking.timeServers = [ "time.google.com" ];

    # Defeat lid switches on laptops
    services.logind.lidSwitch = "ignore";

    # Clean /tmp
    boot.cleanTmpDir = true;

    # Enable fstrim
    services.fstrim.enable = true;

    # Enable network monitoring
    services.vnstat.enable = true;

    # Enable automatic upgrades
    # system.autoUpgrade.enable = true;

    # Enable automatic garbage collection after 14 days
    nix.gc.automatic = true;
    nix.gc.options = "--delete-older-than 14d";
}
