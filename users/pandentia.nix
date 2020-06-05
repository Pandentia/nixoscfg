# User configuration.

{ config, pkgs, ... }:
{
    # Define a user account
    users.users.pandentia = {
        isNormalUser = true;
        description = "Cassandra";
        extraGroups = [
            "wheel" "dialout" "scanner"
            "networkmanager"
            "docker" "vboxusers" "libvirtd"
            "syncthing"
        ];
        shell = pkgs.xonsh;
    };
    programs.xonsh.enable = true;
}
