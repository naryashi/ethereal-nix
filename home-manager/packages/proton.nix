{
  pkgs,
  lib,
  inputs,
  ...
}:
{
  home.file = lib.mkMerge (
    lib.mapAttrsToList
      (name: value: {
        ".local/share/Steam/compatibilitytools.d/${name}".source = value;
      })
      (
        with inputs.thou-packages.packages.${pkgs.stdenv.hostPlatform.system};
        {
          "DW-Proton" = dwproton.steamcompattool;
          "Proton-CachyOS" = proton-cachyos.steamcompattool;
          "Proton-CachyOS-v3" = proton-cachyos-v3.steamcompattool;
          "Proton-GE" = proton-ge.steamcompattool;
        }
      )
  );
}
