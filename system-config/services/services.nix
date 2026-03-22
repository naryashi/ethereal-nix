{config,
pkgs,
lib,
...}:
{  
  
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  #enable flatpak
  services.flatpak.enable = true;  

  #piper lib
  services.ratbagd.enable = true;
  
  # Enable OpenTabletDriver
  hardware.opentabletdriver.enable = true;
  hardware.opentabletdriver.daemon.enable = true;

  # Required by OpenTabletDriver
  hardware.uinput.enable = true;
   
  boot.kernelModules = [ "uinput" ];
  
  #lact
   services.lact.enable = true;
 
  systemd.services.lact = {
    description = "GPU control";
    serviceConfig = {
      ExecStart = "${pkgs.lact}/bin/lact daemon";
    };
    enable = true;
  };
}