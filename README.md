# ethereal-nix

a minimal nix config, thanks thou vow for supporter.

# **structure**:
```
├── flake.lock
├── flake.nix
├── home-manager
│   ├── fish.nix
│   ├── home.nix
│   ├── home-pkgs
│   │   ├── games.nix
│   │   ├── others.nix
│   │   └── system.nix
│   └── home-programs.nix
├── README.md
└── system-config
    ├── configuration.nix
    ├── DE
    │   ├── gnome-apps.nix
    │   ├── gnome.nix
    │   └── kde.nix
    ├── fs.nix
    ├── hardware-configuration.nix
    ├── hardware.nix
    ├── services
    │   ├── programs.nix
    │   ├── services.nix
    │   └── settings.nix
    ├── specialisation
    │   └── powersave.nix
    └── system-pkgs.nix
```
# **storage**:
```
├─nvme0n1p1 259:1    0     4G  0 part /boot
├─nvme0n1p2 259:2    0  14,9G  0 part [SWAP]
├─nvme0n1p3 259:3    0  72,4G  0 part /nix/store
│                                     /
└─nvme0n1p4 259:4    0 355,8G  0 part /home
```
## **setup**:
- thinkpad T480
- CPU:i5 8350u
- RAM:16GB DDR4
- integrated gpu (UHD620)

## **DE** :
- KDE Plasma 🙏 
- KWin (Wayland)

## **current packages**:
1419 (nix-system), 1321 (nix-user), 25 (flatpak-user)
