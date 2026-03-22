{pkgs,
config,
lib,
...}:
  
  #settings and boot
{
  
    nix.settings = {
    max-jobs = 2;
    cores = 4;
    auto-optimise-store = true;
    };
  #kernel and boot

  #boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelPackages = lib.mkDefault pkgs.linuxPackages_zen;
   # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  #nix helper
  environment.variables.NH_FLAKE = "/ethereal";
  environment.variables.NH_OS_FLAKE = "/ethereal";
  environment.variables.NH_HOME_FLAKE = "/ethereal";
  
  #for better network
  networking.networkmanager.wifi.powersave = false;
  
   powerManagement.enable = true;

}