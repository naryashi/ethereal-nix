{pkgs,
config,
lib,
...}:
  
  #settings and boot
{
  
    nix.settings = lib.mkDefault {
    max-jobs = 2;
    cores = 4;
    auto-optimise-store = true;
    };
  #kernel and boot

  #boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelPackages = lib.mkDefault pkgs.linuxPackages_xanmod_latest;
   # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  #nix helper
  environment.variables.NH_FLAKE = "/ethereal";
  environment.variables.NH_OS_FLAKE = "/ethereal";
  environment.variables.NH_HOME_FLAKE = "/ethereal";
  
  #for better network
  networking.networkmanager.wifi.powersave = lib.mkForce false;
  
   powerManagement.enable = true;

   #thinkfan levels
   services.thinkfan.levels = 
   [
    [6
     0
     65
    ]
    [
      7
      65
      80
    ]
    [
      "level auto"
       80 
       32767
    ]
   ];
   
   #thinkfan boot process (?
   systemd.services.thinkfan.preStart = "
    /run/current-system/sw/bin/modprobe  -r thinkpad_acpi && /run/current-system/sw/bin/modprobe thinkpad_acpi
  ";
}