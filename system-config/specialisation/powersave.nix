{pkgs, 
config, 
lib,
...}:
{ 

  specialisation = {
   powersave.configuration = {
     
    powerManagement = {
    enable = true;
    powertop.enable = true;
    cpuFreqGovernor = "powersave";
      };
    };
  };
}