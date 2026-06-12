{
  pkgs,
  ...
}:
{

  home.packages = with pkgs; [

    #social
    discord
    zapzap
    signal-desktop
    telegram-desktop

    #shh
    #bitwarden-desktop
    ente-desktop
    qbittorrent

    #multmidia
    vlc
    spotify

    #dev
    zed

  ];

}
