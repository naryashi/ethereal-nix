{
  ...
}:
{
  imports = [
    ./boot.nix
    ./hardware.nix
    ./hardware-configuration.nix
    ../../desktop/gdm/gdm.nix
    ../../desktop/gnome/default.nix
    ../../desktop/gnome/packages.nix
    #../../desktop/kde/default.nix
    #../../desktop/kde/packages.nix
    #../../desktop/sddm/sddm.nix
    ../../dev/containers.nix
    ../../dev/git.nix
    ../../dev/libraries.nix
    ../../modules/programs/default.nix
    ../../modules/programs/services.nix
    ../../modules/system/audio.nix
    ../../modules/system/locale.nix
    ../../modules/system/network.nix
    ../../modules/system/nix-settings.nix
    ../../modules/system/power.nix
    ../../modules/system/user.nix
    ../../packages/default.nix
    ../../packages/settings.nix
    ../../profiles/powersave.nix
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  systemd.services.fwupd-refresh = {
    enable = false;
    wantedBy = [ ];
  };

  system.stateVersion = "26.05"; # Did you read the comment?

}
