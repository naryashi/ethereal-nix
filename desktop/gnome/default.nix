{
  pkgs,
  ...
}:
{

  imports = [
    ./packages.nix
  ];

  services.desktopManager.gnome.enable = true;

  #gnome services and default packages
  services.gnome.core-apps.enable = false;
  services.gnome.core-developer-tools.enable = false;
  services.gnome.games.enable = false;

  #exclude pkgs
  environment.gnome.excludePackages = with pkgs; [
    gnome-calendar
    gnome-characters
    gnome-clocks
    gnome-connections
    gnome-contacts
    gnome-logs
    gnome-maps
    gnome-music
    gnome-software
    gnome-system-monitor
    gnome-weather
    gnome-tour
    xterm # (?)
  ];

}
