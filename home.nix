{ config, pkgs, ... }:
{
  home.username = "user";
  home.homeDirectory = "/home/user";

  home.packages = with pkgs; [
    tree
    ripgrep
    fd
    jq
    lazygit
  ];

  programs.helix = {
    enable = true;
    defaultEditor = true;
    settings = {
      theme = "gruvbox";
      editor = {
        line-number = "relative";
        cursor-shape.insert = "bar";
      };
    };
  };

  programs.git = {
    enable = true;
    userName = "Your Name";
    userEmail = "you@example.com";
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -la";
      rebuild = "sudo nixos-rebuild switch --flake github:bdillo/dotfiles#nixos-dev";
      rebuild-local = "sudo nixos-rebuild switch --flake /etc/nixos#nixos-dev";
    };
  };

  home.stateVersion = "25.11";
}
