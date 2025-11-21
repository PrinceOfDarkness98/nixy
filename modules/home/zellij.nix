{ pkgs, ... }:
{
  programs.zellij = {
    enable = true;
    mouse = true;
    shell = "${pkgs.zsh}/bin/zsh";
    terminal = "kitty";
  };
}
