
{pkgs, 
config,
lib,
...}:
 
{

 imports = [ 
  ./fish.nix
  ./home-pkgs/games.nix
  ./home-pkgs/others.nix
  ./home-pkgs/system.nix
  ./home-programs.nix
  
 ];

  #home
  programs.home-manager.enable = true; 
  home.username = "emi"; 
  home.homeDirectory = "/home/emi"; 
  home.packages = with pkgs; [ 
    
  ];

  nixpkgs.config.allowUnfree = true; 
  
  home.stateVersion = "25.11";
}