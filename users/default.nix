# User configuration.

{ config, pkgs, ... }:
{
    imports = [
        ../roles/sudo.nix
        ./pandentia.nix
    ];
}
