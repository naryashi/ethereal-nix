{pkgs, 
config,
...}:
{
  environment.systemPackages = with pkgs; [
  piper 
  libratbag
  opentabletdriver
  nh

  ];




} 
