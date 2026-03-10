{config,
lib,
inputs,
... }: 
{
  hardware.nvidia.modesetting.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware = {
    graphics.enable = true;
    nvidia.open = false;
    nvidia.package = config.boot.kernelPackages.nvidiaPackages.production;
  
   };
}
