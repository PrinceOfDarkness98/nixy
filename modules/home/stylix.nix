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
      rofi.enable = false;
      hyprland.enable = false;
      hyprlock.enable = false;
      ghostty.enable = true;
      qt.enable = true;
      kitty.enable = true;
    };

    services.nwg-drawer-stylix.enable = true;
  }
