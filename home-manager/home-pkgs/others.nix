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
 vscode
 kdePackages.kate

 #for vscode
 nixfmt
 direnv

 #kde
 kdePackages.kcalc
 kdePackages.sweeper
 
 ];

}