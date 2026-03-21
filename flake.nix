{
  
 description = "ethereal nix flake :3";

  inputs = {
    #packages nix
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable"; 
   
    #home-manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    
    #nix gaming
    nix-gaming.url = "github:fufexan/nix-gaming";
   
    #notebook moment
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
  
  };

  outputs = {self,
  nixpkgs,
  home-manager,
  nixos-hardware,
  ...}
  @inputs: 
  {

   nixosConfigurations = {
     "nyako" = nixpkgs.lib.nixosSystem {
       specialArgs = {inherit inputs;};
       system = "x86_64-linux";
       modules = [ ./system-config/configuration.nix 
       nixos-hardware.nixosModules.lenovo-thinkpad-t480
       ];
     };
   }; 
   
   #cachix
  
    nix.settings = {
    substituters = ["https://nix-gaming.cachix.org"];
     trusted-public-keys = ["nix-gaming.cachix.org-1:nbjlureqMbRAxR1gJ/f3hxemL9svXaZF/Ees8vCUUs4="];
    };  
   
   homeConfigurations = {
     "emi@nyako" = home-manager.lib.homeManagerConfiguration {
       pkgs = nixpkgs.legacyPackages."x86_64-linux";
       modules = [ ./home-manager/home.nix]; 
       extraSpecialArgs = {inherit inputs;};
       };
       
     };      

   };
 }


