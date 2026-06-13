{
  pkgs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    piper
    libratbag
    nh
    auto-cpufreq
    tlp
    thinkfan
    home-manager

  ];
}
