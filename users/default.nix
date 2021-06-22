# User configuration.

{ config, pkgs, ... }:
{
    imports = [
        ../roles/sudo.nix
        ./sapphiccode.nix
    ];
}
