{config,
pkgs,
...}:
{
  
  #kde service, sddm, shell etc
  services = {
    displayManager.sddm.enable = true;
    displayManager.sddm.wayland.enable = true;
    desktopManager.plasma6.enable = true;
  };
  
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    plasma-browser-integration
    elisa
    kwalletmanager
    plasma-systemmonitor

   ];

}

