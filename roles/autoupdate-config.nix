{ config, pkgs, ... }:
{
    systemd.services.autoupdate-config = {
        description = "Update external NixOS configs";
        after = "network-online.target";
        wants = "network-online.target";
        path = [ pkgs.gitMinimal ];
        script = "git reset --hard && git pull";
        serviceConfig.WorkingDirectory = "/etc/nixos/cfg";
        serviceConfig.Type = "oneshot";
    };
    systemd.timers.autoupdate-config = {
        description = "Download external NixOS configs hourly";
        wantedBy = "timers.target";
        timerConfig = {
            OnBootSec = "15m";
            OnUnitActiveSec = "1h";
        };
    };
}
