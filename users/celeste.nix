# User configuration.

{ config, pkgs, ... }:
{
    # Define a user account
    users.users.celeste = {
        isNormalUser = true;
        description = "Celeste";
        extraGroups = [
            "wheel" "dialout" "scanner"
            "networkmanager"
            "docker" "vboxusers" "libvirtd"
            "syncthing"
        ];
    };
}
