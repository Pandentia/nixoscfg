# User configuration.

{ config, pkgs, ... }:
{
    imports = [
        ./pandentia.nix
        ./celeste.nix
    ];
}
