  {config,
  lib,
  ...}:
  {

   fileSystems = {
  "/".options = [ "compress=zstd:3" ];
  "/home".options = [ "compress=zstd:3" ];

   };

   }
