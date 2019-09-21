# Generic server configuration.

{ config, pkgs, ... }:
{
    # Enable SSH
    services.openssh.enable = true;
    services.openssh.passwordAuthentication = false;

    # Set leap-smearing time servers
    networking.timeServers = [ "time.google.com" ];

    # Defeat lid switches on laptops
    services.logind.lidSwitch = "ignore";

    # Enable automatic upgrades
    system.autoUpgrade.enable = true;
}
