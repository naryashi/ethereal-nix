{ 
config,
pkgs,
... }:
{
  imports =
    [ 
      ./DE/DM.nix
      ./DE/gnome-extensions.nix
      ./DE/gnome-extra-pkgs.nix
      ./DE/kde-pkgs.nix
      ./login-manager/login-manager.nix
      ./services/services.nix
      ./services/programs.nix
      ./services/settings.nix
      ./specialisation/powersave.nix
      ./fs.nix
      ./hardware-configuration.nix
      ./hardware.nix
      ./system-pkgs.nix
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  #network
  networking.hostName = "nyako"; # Define your hostname.
 # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/Sao_Paulo";

  # Select internationalisation properties.
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

  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  #services.displayManager.sddm.enable = true;
  #services.desktopManager.plasma6.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "br";
    variant = "";
  };

  # Configure console keymap
  console.keyMap = "br-abnt2";

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
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.emi = {
    isNormalUser = true;
    description = "emi";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
      kdePackages.dolphin
    #  thunderbird
    ];
  };
  environment.systemPackages = with pkgs; [

  ];

  #firewall
  networking.firewall.enable = true;
  


  #nix version
  system.stateVersion = "25.11"; # Did you read the comment?

}
