{config,
pkgs,
lib,
...}:
{

 home.packages = with pkgs; [

 #games
 gamemode
 steam
 steam-run
 heroic
 osu-lazer-bin
 protonup-ng

  ];

 home.sessionVariables = {
 STEAM_EXTRA_COMPAT_TOOLS_PATHS =
 "/home/emi/.steam/root/compatibilitytools.d";

 };
 
}
