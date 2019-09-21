# CockroachDB configuration.

{ config, pkgs, ... }:
{
    # Enable the database itself
    services.cockroachdb.enable = true;
}
