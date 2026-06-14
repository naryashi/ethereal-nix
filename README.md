# pure-nix ❄️

A minimal NixOS configuration for daily driving.

Special thanks to [thou vow](https://github.com/thou-vow) for support.

> **Note**: This setup works for me — on my machine. Yours may differ.

---

## Hardware

| Component | Spec |
|-----------|------|
| Laptop | ThinkBook 14 G3 ACL |
| CPU | Ryzen 5 5600U |
| RAM | 16GB DDR4 (3200 MHz) |
| GPU | AMD Radeon Graphics (integrated) |
| Desktop | GNOME / Mutter (Wayland) |

---

## Storage Layout
```
nvme0n1                 259:0    0 476,9G  0 disk  
├─nvme0n1p1             259:1    0     1G  0 part  /boot
├─nvme0n1p2             259:2    0    16G  0 part  [SWAP]
├─nvme0n1p3             259:3    0  71,4G  0 part  
└─nvme0n1p5             259:4    0 388,5G  0 part  /home

```
---

## Structure
```
├── desktop
│   ├── gdm
│   │   └── gdm.nix
│   ├── gnome
│   │   ├── default.nix
│   │   ├── packages.nix
│   │   └── stylix.nix
│   ├── kde
│   │   ├── default.nix
│   │   └── packages.nix
│   └── sddm
│       └── sddm.nix
├── dev
│   ├── containers.nix
│   ├── git.nix
│   └── libraries.nix
├── flake.lock
├── flake.nix
├── home-manager
│   ├── desktop
│   │   └── gnome
│   │       ├── extensions.nix
│   │       └── settings.nix
│   ├── dev
│   │   ├── editors
│   │   │   └── zed.nix
│   │   └── languages
│   │       └── default.nix
│   ├── fish.nix
│   ├── home.nix
│   ├── packages
│   │   ├── games.nix
│   │   ├── others.nix
│   │   ├── proton.nix
│   │   └── system.nix
│   └── programs.nix
├── hosts
│   └── thinkbook
│       ├── boot.nix
│       ├── configuration.nix
│       ├── fs.nix
│       ├── hardware-configuration.nix
│       └── hardware.nix
├── modules
│   ├── programs
│   │   ├── default.nix
│   │   └── services.nix
│   └── system
│       ├── audio.nix
│       ├── locale.nix
│       ├── network.nix
│       ├── nix-settings.nix
│       ├── power.nix
│       └── user.nix
├── packages
│   ├── default.nix
│   └── settings.nix
├── profiles
│   └── powersave.nix
└── README.md

21 directories, 40 files

```
---
## Current Packages

6 (flatpak), 1736 (nix-system), 1064 (nix-user)


---

## Note

This is my personal setup.  
It fits my ThinkBook and my preferences.  
Yours may differ — and that's fine.

If you find something useful here, feel free to borrow, adapt, or ignore. ✨
