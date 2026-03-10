{config,
pkgs,
...}:
{
  
 home.packages = with pkgs; [
  
 #social
 discord
 zapzap
 signal-desktop
 telegram-desktop

 #shh
 bitwarden-desktop
 ente-desktop
 qbittorrent

 #multmidia
 vlc 
 
 #editor
 vscodium
 kdePackages.kate

 #for vscodium
 nixfmt
 direnv

 #kde
 kdePackages.kcalc
 kdePackages.sweeper
 
 ];

}