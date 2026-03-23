{ config,
pkgs,
...}:
{
  environment.systemPackages = with pkgs;
  [
   baobab
   gnome-disk-utility

   #manager
   gnome-tweaks
   gnome-extension-manager

  ];
  #gnome
  services.gnome.core-apps.enable = true;
  services.gnome.core-developer-tools.enable = true;
  services.gnome.games.enable = false;
  environment.gnome.excludePackages = with pkgs; [
     gnome-tour 
     gnome-user-docs 
  ];

}
