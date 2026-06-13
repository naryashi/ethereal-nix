{
  ...
}:
{
  fileSystems = {
    "/".options = [
      "compress=zstd:2"
    ];
    "/home".options = [
      "compress=zstd:3"
    ];
    "/swap".options = [
      "noatime"
    ];
  };
}
