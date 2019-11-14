{ config, ... }:
{
    virtualisation.docker = {
        enable = true;
        liveRestore = false;
    };
}
