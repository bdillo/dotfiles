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
    settings = {
      keybind = "global:alt+space=toggle_visibility";
      font-family = "JetBrains Mono NL";
    };
  };

  programs.zsh.initContent = ''
    export PS1='%~ %# > '
  '';

  home.stateVersion = "25.11";
}
