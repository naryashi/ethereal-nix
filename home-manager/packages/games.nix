{
  pkgs,
  ...
}:
{

  home.packages = with pkgs; [

    #games
    gamemode
    steam
    steam-run
    heroic
    protonup-ng
    osu-lazer-bin
  ];

  home.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = "/home/emi/.steam/root/compatibilitytools.d";
  };

}
