{config,
pkgs,
...}:
{

 environment.systemPackages = with pkgs; [

   #others
   baobab
   gnome-disk-utility

   #manager
   gnome-tweaks
   gnome-extension-manager

   #extensions
   gnomeExtensions.blur-my-shell
   gnomeExtensions.caffeine
   gnomeExtensions.dash2dock-lite
   gnomeExtensions.just-perfection
   gnomeExtensions.open-bar
   gnomeExtensions.quick-settings-audio-panel
   gnomeExtensions.restart-to
   gnomeExtensions.vitals
 ];

}