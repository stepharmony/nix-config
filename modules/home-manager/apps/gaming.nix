{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    steam
    lutris
    protonup-qt
    wineWowPackages.stable
    winetricks
    proton-ge-custom
    mangohud
  ];

}
