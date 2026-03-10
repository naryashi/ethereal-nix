{config,
lib,
pkgs,
...}:

{


  programs.fish = {
    enable = true;
    interactiveShellInit = '''';
    plugins = [
      { 
        name = "grc"; 
        src = pkgs.fishPlugins.grc.src; 
      }
      { 
        name = "autopair";
        src = pkgs.fishPlugins.autopair.src; 
      }
      { 
        name = "puffer";
        src = pkgs.fishPlugins.puffer.src; 
      }
      { 
        name = "pisces";
        src = pkgs.fishPlugins.pisces.src; 
      }
      { 
        name = "hydro"; 
        src = pkgs.fishPlugins.hydro.src; 
      }
    ];
  };

  home.packages = with pkgs; [
    fishPlugins.grc
    fishPlugins.autopair
    fishPlugins.puffer
    fishPlugins.pisces
    fishPlugins.hydro
  ];
}