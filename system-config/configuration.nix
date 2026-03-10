# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ 
      #./DE/gnome.nix
      ./DE/gnome-apps.nix
      ./DE/kde.nix
      ./fs.nix
      ./hardware-configuration.nix
      ./nvidia.nix
      ./services/services.nix
      ./services/programs.nix
      ./system-pkgs.nix
    ];
   
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  #nh 
  environment.variables.NH_FLAKE = "/ethereal";
  environment.variables.NH_OS_FLAKE = "/ethereal";
  environment.variables.NH_HOME_FLAKE = "/ethereal";
  
  # Bootloader.  
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "nyako"; # Define your hostname.

  networking.networkmanager.enable = true;

  time.timeZone = "America/Sao_Paulo";

  i18n.defaultLocale = "en_US.UTF-8";


  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };


  console.keyMap = "br-abnt2";

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };


  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;


  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.emi = {
    isNormalUser = true;
    description = "emi";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  networking.firewall.enable = true;

  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.11"; # Did you read the comment?

}
