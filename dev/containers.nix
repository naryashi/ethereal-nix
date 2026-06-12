{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    docker
    docker-compose
    podman
    podman-compose
    buildah
    skopeo

    devpod
    lazydocker
  ];

  virtualisation.docker.enable = true;

  virtualisation.podman.enable = true;

  users.users.emi = {
    extraGroups = [
      "docker"
      "podman"
    ];
  };
}
