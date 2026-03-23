{ config, pkgs, ... }:
{
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
      theme = "darcula-solid";
      editor.file-picker.hidden = false;
    };
    languages = {
      language-server.rust-analyzer.config.check.command = "clippy";

      language-server.pyright.config.python.analysis.typeCheckingMode = "basic";
      language-server.ruff.command = "ruff-lsp";
      language-server.ruff.config.settings.args = [ "--ignore" "E501" ];

      language = [
        {
          name = "python";
          language-servers = [ "pyright" "ruff" ];
          formatter = { command = "black"; args = [ "-q" "-" ]; };
        }
        {
          name = "c";
          formatter = { command = "clang-format"; };
          auto-format = true;
        }
        {
          name = "go";
          auto-format = true;
          formatter = { command = "gofmt"; };
        }
      ];
    };
  };

  programs.vim = {
    enable = true;
    settings = {
      tabstop = 4;
      shiftwidth = 4;
      number = true;
    };
    extraConfig = "syntax on";
  };

  programs.git = {
    enable = true;
    userName = "bdillo";
    userEmail = "ben.g.dillon@pm.me";
    signing = {
      key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF2m8je5nNCXHBABPShbFJj9JxEAMbmMT8vTOltcpHLc";
      signByDefault = true;
      format = "ssh";
    };
    ignores = [
      ".gitignore"
      ".idea"
      ".DS_Store"
    ];
    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = true;
    };
  };

  programs.claude-code = {
    enable = true;
    memory = builtins.readFile ./claude/CLAUDE.md;
  };

  programs.zsh = {
    enable = true;
    initExtra = ''
      set -o vi
      export PS1='%~ %# > '
      bindkey '^R' history-incremental-search-backward
    '';
    history.share = true;
    shellAliases = {
      ll = "ls -la";
    };
  };
}
