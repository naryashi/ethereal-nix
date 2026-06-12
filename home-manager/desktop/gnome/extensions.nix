{
  pkgs,
  ...
}:
{

  home.packages = with pkgs; [
    gnomeExtensions.blur-my-shell
    gnomeExtensions.just-perfection
    gnomeExtensions.vitals
    gnomeExtensions.caffeine
    gnomeExtensions.open-bar
    gnomeExtensions.quick-settings-audio-panel
    gnomeExtensions.appindicator
    gnomeExtensions.user-themes
  ];
}
