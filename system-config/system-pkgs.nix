{pkgs, 
config,
...}:
{
  environment.systemPackages = with pkgs; [
  piper 
  libratbag
  nh
  auto-cpufreq
  opentabletdriver

  ];




} 
