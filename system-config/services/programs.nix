{config,
pkgs,
...}:
{
  #firefox
  programs.firefox = {
    enable = true;
  };
  
  #appimage
  programs.appimage = {
  enable = true;
  binfmt = true;
  };

  #dconf  
  programs.dconf = {
    enable = true; 
  };

  #games
  programs.steam = {
    enable = true;
  };
  programs.gamemode = {
    enable = true;
  };
  
  #direnv
  programs.direnv = { 
  enable = true;
  
  };
}

 

