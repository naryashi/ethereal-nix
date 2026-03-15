{ config,
pkgs,
...}:
{

  #login and session
  #services.displayManager.gdm.enable = true;
  #ervices.desktopManager.gnome.enable = true;

  #gnome
  services.gnome.core-apps.enable = true;
  services.gnome.core-developer-tools.enable = true;
  services.gnome.games.enable = false;
  environment.gnome.excludePackages = with pkgs; [
     gnome-tour 
     gnome-user-docs 
  ];

}