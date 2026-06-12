{
  pkgs,
  ...
}:
{

  environment.systemPackages = with pkgs; [
    kdePackages.kate
    kdePackages.kcalc
  ];

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    plasma-browser-integration
    elisa
    kwalletmanager
    plasma-systemmonitor
    sweeper
  ];

}
