{
  host,
  lib,
  ...
}: let
  inherit (import ../../hosts/${host}/variables.nix) stylixEnable;
in
  lib.mkIf stylixEnable {
    stylix.targets = {
      waybar.enable = true;
      rofi.enable = true;
      hyprland.enable = true;
      hyprlock.enable = true;
      ghostty.enable = true;
      qt.enable = true;
      kitty.enable = true;
    };

    services.nwg-drawer-stylix.enable = true;
  }
