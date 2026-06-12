{
  pkgs,
  ...
}:
{

  #user area
  users.users.emi = {
    isNormalUser = true;
    description = "emi";
    extraGroups = [
      "networkmanager"
      "wheel"
      "audio"
    ];

    packages = with pkgs; [

      #  thunderbird
    ];
  };
}
