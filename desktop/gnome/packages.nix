{
  pkgs,
  ...
}:
{
  #my packages for gnome
  environment.systemPackages = with pkgs; [
    ptyxis
    gnome-tweaks
    nautilus
    dconf-editor
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
