# User configuration.

{ config, pkgs, ... }:
{
    # Define a user account
    users.users.pandentia = {
        isNormalUser = true;
        uid = 1000;
        group = "pandentia";
        description = "Cassandra";
        extraGroups = [
            "wheel" "dialout" "scanner"
            "networkmanager"
            "docker" "vboxusers" "libvirtd"
            "syncthing"
        ];
        shell = pkgs.xonsh;
    };
    users.groups.pandentia.gid = 1000;
    programs.xonsh.enable = true;
}
