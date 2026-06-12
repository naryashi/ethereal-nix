{
  ...
}:
{

  programs.nh = {
    enable = true;
    clean.enable = true;
  };
  #flake and home dir
  environment.variables.NH_FLAKE = "/pure";
  environment.variables.NH_OS_FLAKE = "/pure";
  environment.variables.NH_HOME_FLAKE = "/pure";

}
