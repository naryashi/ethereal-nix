{
  lib,
  pkgs,
  ...
}:

{

  services.gnome.gnome-keyring.enable = true;

  security.pam.services = {
    login.enableGnomeKeyring = true;
    gdm.enableGnomeKeyring = true;
  };

  environment.systemPackages = with pkgs; [
    gnome-keyring
    seahorse
  ];

  programs.git = {
    enable = true;
  };

  programs.ssh.askPassword = lib.mkDefault "${pkgs.seahorse}/libexec/seahorse/ssh-askpass";
}
