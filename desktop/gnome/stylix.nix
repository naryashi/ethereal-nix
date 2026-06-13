{
  pkgs,
  lib,
  ...
}:
{
  stylix.enable = true;

  stylix.polarity = "dark";

  stylix.base16Scheme = lib.mkDefault "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";

}
