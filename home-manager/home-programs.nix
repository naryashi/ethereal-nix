{config, 
lib,
pkgs,
...}:
{
  programs.starship = {
  enable = true;
  enableFishIntegration = true;
  };

  #shell 
  programs.fish = {
    enable = true;
  };  

  programs.bash = {
    enable = true;
  };
  
  programs.kitty = {
   enable = true;
     settings = {
      shell = "${pkgs.fish}/bin/fish";
    };
  };

  programs.discord = {
    enable = true;
  };

  programs.zapzap ={
    enable = true;
  };
  
  programs.git ={
   enable = true; 
  };
  
  #xdg
   xdg.portal.extraPortals  = {
    enable = true;
     extraPortals =
       with pkgs;
      [
        kdePackages.xdg-desktop-portal-kde
        xdg-desktop-portal-gtk
      ];

   };
}