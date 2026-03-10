  {config,
  lib,
  ...}:
  {

   fileSystems = {
  "/".options = [ "compress=zstd:5" ];
  "/home".options = [ "compress=zstd:5" ];

   };

   fileSystems."/mnt/dev/sda1" =
    { device = "/dev/disk/by-uuid/a0e7d7d6-c7cc-430a-9b29-229bfa98b616";
      fsType = "btrfs";
    };
   }
