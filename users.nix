# User configuration.

{ config, pkgs, ... }:
{
    # Define my user account
    users.users.pandentia = {
        isNormalUser = true;
        description = "Cassandra";
        extraGroups = [ "wheel" "docker" "syncthing" ];
        shell = pkgs.fish;
    };
    programs.fish.enable = true;

    # Enable sudo
    security.sudo.enable = true;
    security.sudo.wheelNeedsPassword = false;
}
