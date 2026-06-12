{
  ...
}:

{

  imports = [
    ./fish.nix
    ./programs.nix

    # Dev
    ./dev/editors/zed.nix
    ./dev/languages/default.nix

    #home pkgs
    ./packages/games.nix
    ./packages/others.nix
    ./packages/proton.nix
    ./packages/system.nix

    #visual (gnome)
    #./desktop/gnome/extensions.nix
    ./desktop/gnome/settings.nix

  ];

  #home
  home.username = "emi";
  home.homeDirectory = "/home/emi";
  # home.packages = with pkgs; [

  # ];

  nixpkgs.config.allowUnfree = true;

  home.stateVersion = "25.11";
}
