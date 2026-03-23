{config,
pkgs,
lib,
...}:
{  
  
  #thinkfan 
  services.thinkfan.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  #enable flatpak
  services.flatpak.enable = true;  

  #piper lib
  services.ratbagd.enable = true;
  
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