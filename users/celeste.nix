# User configuration.

{ config, pkgs, ... }:
{
    # Define a user account
    users.users.celeste = {
        isNormalUser = true;
        description = "Celeste";
        extraGroups = [ "wheel" "networkmanager" "docker" "vboxusers" "syncthing" ];
    };
}
