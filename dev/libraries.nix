{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    #python pkgs
    python3Packages.numpy
    python3Packages.pandas
    python3Packages.matplotlib
    python3Packages.jupyter
    python3Packages.torch

    #common libs C-C++
    openssl
    zlib
    sqlite
    libffi
    libxml2
    libxslt
    postgresql

    #rust libs
    libgit2
    libssh2
    curl

    #build
    meson
    autoconf
    automake
    libtool
    pkg-config
  ];
}
