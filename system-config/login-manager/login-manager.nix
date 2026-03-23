{config,
pkgs,
lib,
...}:
{   
     #SDDM
     services.displayManager.sddm =  {
        enable = true;
        wayland.enable = true;
        autoNumlock = true;   
        autoLogin = {
            enable = true;
            user = "emi";
        };  
      };

    #GDM
    #services.displayManager.gdm.enable = true
    
}    