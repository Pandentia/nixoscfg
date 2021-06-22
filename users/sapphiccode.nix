# User configuration.

{ config, pkgs, ... }:
{
    # Define a user account
    users.users.sapphiccode = {
        isNormalUser = true;
        uid = 1000;
        group = "sapphiccode";
        description = "Cassandra";
        extraGroups = [
            "wheel" "dialout" "scanner"
            "networkmanager"
            "docker" "vboxusers" "libvirtd"
            "syncthing"
        ];
        shell = pkgs.fish;
    };
    users.groups.sapphiccode.gid = 1000;
    programs.fish.enable = true;
}
