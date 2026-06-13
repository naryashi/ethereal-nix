{
  pkgs,
  ...
}:
{

  home.packages = with pkgs; [

    #aaa
    gearlever

    #system tools
    lact
    cpu-x
    btrfs-assistant
    snapper
    btrfs-progs
    mission-center
    gparted
    #gnome-disk-utility
    kdePackages.filelight
    kdePackages.partitionmanager
    alsa-utils

    #terminal
    kitty
    fastfetch
    git
    curl
    fish
    ncdu
    grc
    starship
    tree
    wget
    unzip
    zenity
    alacritty

    #fonts
    nerd-fonts.adwaita-mono
    nerd-fonts.symbols-only
    nerd-fonts.victor-mono

  ];
}
