{
  ...
}:
{
  #network
  networking.hostName = "kinni"; # Define hostname.

  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  networking.networkmanager.wifi.powersave = false;
  networking.networkmanager.enable = true;

  #firewall
  networking.firewall.enable = true;
  services.networkd-dispatcher = {
    enable = true;

  };

}
