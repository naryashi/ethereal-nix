{
  pkgs,
  ...
}:
{
  #kernel and boot

  #boot.kernelPackages = pkgs.linuxPackages_latest;
  #boot.kernelPackages = pkgs.linuxPackages_xanmod_latest;
  boot.kernelPackages = pkgs.linuxPackages_cachyos-lto;
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.kernelModules = [ "amdgpu" ];
  boot.kernelParams = [
    "amd_pstate=active"
    "zswap.enabled=1" # zswap

  ];
  boot.kernel.sysctl = {
    "vm.swappiness" = 10;
  };

}
