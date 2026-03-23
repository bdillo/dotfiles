{ config, pkgs, ... }:
{
  imports = [ ./home.nix ];

  home.username = "user";
  home.homeDirectory = "/home/user";

  programs.zsh.shellAliases = {
    rebuild = "sudo nixos-rebuild switch --flake github:bdillo/dotfiles#nixos-dev";
    rebuild-local = "sudo nixos-rebuild switch --flake /etc/nixos#nixos-dev";
  };

  home.stateVersion = "25.11";
}
