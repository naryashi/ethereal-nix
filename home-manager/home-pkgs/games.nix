{config,
pkgs,
lib,
inputs, 
...}:
{

 home.packages = with pkgs; [

 #games
 gamemode
 steam
 steam-run
 heroic
 protonup-ng

  ];

 home.sessionVariables = {
 STEAM_EXTRA_COMPAT_TOOLS_PATHS =
 "/home/emi/.steam/root/compatibilitytools.d";
 };
 
}
