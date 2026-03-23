{pkgs,
config,
lib,
...}: 
{
    #hardware video opengpl
    hardware.graphics = {
     enable = true;
      enable32Bit = true;
    };

    hardware.cpu.intel.updateMicrocode = true;
    
    services.power-profiles-daemon.enable = true;
    
    powerManagement.cpuFreqGovernor = lib.mkDefault "performance";

    services.auto-cpufreq.settings = lib.mkDefault {
     battery = {
      governor = "powersave";
       turbo = "never";
    };
     charger = lib.mkForce{
      governor = lib.mkDefault "performance";
       turbo = "always";
    };
  };
}