{config,
pkgs,
lib,
...}:
{ 

  services ={
    #gnome  
    desktopManager.gnome.enable = true;
    
    #kde
    #desktopManager.plasma6.enable = true;
    
  };
  programs.ssh.askPassword = pkgs.lib.mkForce "${pkgs.kdePackages.ksshaskpass.out}/bin/ksshaskpass";
}
