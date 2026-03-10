{
  
 description = "ethereal nix flake :3";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable"; 
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {self, nixpkgs, home-manager} @ inputs: {

   nixosConfigurations = {
     "nyako" = nixpkgs.lib.nixosSystem {
       specialArgs = {inherit inputs;};
       system = "x86_64-linux";
       modules = [ ./system-config/configuration.nix ];
     };
   }; 

   homeConfigurations = {
     "emi@nyako" = home-manager.lib.homeManagerConfiguration {
       pkgs = nixpkgs.legacyPackages."x86_64-linux";
       modules = [ ./home-manager/home.nix ];
     };
   };
 };

}


