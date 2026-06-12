{
  lib,
  pkgs,
  ...
}:
{
  imports = [
    ../languages/default.nix
  ];
  programs.zed-editor = {
    enable = true;

    extensions = [
      #themes
      "Tokyo Night Themes"
      "Github Theme"
      "Catppuccin"

      #icons
      "Catppucin Icons"

      #lang
      "fish"
      "nix"
      "toml"
      "html"
      "git-firefly"
      "python"
      "rust"

    ];

    extraPackages = with pkgs; [
      rust-analyzer
    ];

    userSettings = {
      theme = "Catppuccin Mocha";
      icon_themes = "Catppucin Mocha";
      vim_mode = false;
      ui_font_size = 18;
      buffer_font_size = 14;
      hour_format = lib.mkDefault "hour24";
      format_on_save = "language_server";
      lsp = {
        nil = {
          format_on_save = {
            command = [ "nixfmt" ];
          };
        };

        "rust-analyzer" = {
          binary.path_lookup = true;
        };
        "rust" = {
          format_on_save = {
            external = {
              command = [ "cargofmt" ];

            };
          };
        };
      };
    };
  };
}
