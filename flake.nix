{
  description = "pure nix flake :3";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-gaming.url = "github:fufexan/nix-gaming";
    thou-packages.url = "github:thou-vow/nix-packages";

    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs =
    {
      nixpkgs,
      home-manager,
      nix-gaming,
      thou-packages,
      stylix,
      chaotic,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {

      formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixfmt-tree;

      nixosConfigurations.kinni = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          chaotic.nixosModules.default
          stylix.nixosModules.stylix
          ./hosts/thinkbook/configuration.nix
          ./hosts/thinkbook/hardware.nix
          ./hosts/thinkbook/hardware-configuration.nix
          ./hosts/thinkbook/boot.nix

          home-manager.nixosModules.home-manager
          {
            home-manager = {
              users.emi = import ./home-manager/home.nix;
              extraSpecialArgs = { inherit inputs; };
            };

            nix.settings = {
              experimental-features = [
                "nix-command"
                "flakes"
              ];

              auto-optimise-store = true;

            };
          }
        ];
      };

      homeConfigurations."emi@kinni" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ ./home-manager/home.nix ];
        extraSpecialArgs = { inherit inputs; };
      };
    };
}
