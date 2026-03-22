{pkgs, 
config, 
lib,
...}:
{

  specialisation = {
   powersave.configuration = {
       
       powerManagement.cpuFreqGovernor = lib.mkForce "powersave";
    
        #kernel
        boot.kernelPackages = lib.mkForce pkgs.linuxPackages_xanmod;
    
    };
  };      
}