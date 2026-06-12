{
  ...
}:
{

  #jack, pulse, real time and compatibility
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true; # professional setting
  };

  #low latency for jack
  services.pipewire.extraConfig.pipewire."92-low-latency" = {
    "context.properties" = {
      "default.clock.rate" = 48000;
      "default.clock.quantum" = 128;
      "default.clock.min-quantum" = 64;
      "default.clock.max-quantum" = 512;
    };
  };

  #latency and clients
  services.pipewire.extraConfig.pipewire-pulse."92-low-latency" = {
    "pulse.properties" = {
      "pulse.min.req" = "64/48000";
      "pulse.default.req" = "64/48000";
      "pulse.max.req" = "128/48000";
    };
  };
}
