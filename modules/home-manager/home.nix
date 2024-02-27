{ config, pkgs, ... }:

{
  imports = [
    ./apps/gaming.nix
    ./apps/music.nix
  ];

  home.username = "cloak";
  home.homeDirectory = "/home/cloak";

  home.packages = with pkgs; [
    neofetch
    syncthing
    vesktop
    remnote
    popcorntime
    spotify
    deluge
    mpv
    obsidian
  ];

  # starship - an customizable prompt for any shell
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    # custom settings
    settings = {
      add_newline = false;
      character = {
        success_symbol = "[➜](bold green)";
        error_symbol = "[➜](bold red)";
      };
      shell = {
        disabled = false;
        format = "$indicator";
        fish_indicator = "";
        bash_indicator = "[BASH](blue) ";
        zsh_indicator = "[ZSH](blue) ";
      };
    };
  };

  programs.bash = {
    enable = true;
    bashrcExtra = "eval \"$(starship init bash)\"";
  };

  # alacritty - a cross-platform, GPU-accelerated terminal emulator
  programs.alacritty = {
    enable = true;
    # custom settings
    settings = {
      env.TERM = "xterm-256color";
      font = {
        size = 12;
        # draw_bold_text_with_bright_colors = true;
      };
      scrolling.multiplier = 5;
      selection.save_to_clipboard = true;
    };
  };

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}
