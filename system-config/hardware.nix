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

    services.auto-cpufreq.settings = {
     battery = {
      governor = "powersave";
       turbo = "never";
    };
    charger = {
     governor = "performance";
      turbo = "auto";
    };
  };
}