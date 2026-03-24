{ config, pkgs, ... }:
{
  imports = [ ./home.nix ];

  home.username = "bendillon";
  home.homeDirectory = "/Users/bendillon";

  programs.git.settings.gpg.ssh.program = "/Applications/1Password.app/Contents/MacOS/op-ssh-sign";

  home.file.".ssh/config".text = ''
    Host *
      IdentityAgent "~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
      SetEnv TERM=xterm-256color
  '';

  programs.ghostty = {
    enable = true;
    package = null;
    settings = {
      keybind = "global:alt+space=toggle_visibility";
      font-family = "JetBrains Mono NL";
    };
  };

  programs.zsh.initContent = ''
    export PS1='%~ %# > '
  '';

  programs.zsh.shellAliases = {
    hm-switch = "home-manager switch --flake github:bdillo/dotfiles#mac -b backup";
    hm-switch-local = "home-manager switch --flake ~/workspace/dotfiles#mac -b backup";
  };

  home.stateVersion = "25.11";
}
