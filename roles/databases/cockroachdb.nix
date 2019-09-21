# CockroachDB configuration.

{ config, pkgs, ... }:
{
    # Enable the database itself
    services.cockroachdb.enable = true;
    # Open the required ports
    services.cockroachdb.openPorts = true;
}
