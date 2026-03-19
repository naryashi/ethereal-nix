{pkgs, 
config,
...}:
{
  
 home.packages = with pkgs; [

 #system tools
 lact
 cpu-x
 btrfs-assistant
 snapper
 btrfs-progs
 mission-center

 #terminal
 kitty 
 fastfetch
 git 
 curl
 fish
 ncdu
 grc 
 starship
 tree 
 wget
 unzip
 zenity

 #fonts
 nerd-fonts.adwaita-mono
 nerd-fonts.symbols-only
 nerd-fonts.victor-mono

 ];
}