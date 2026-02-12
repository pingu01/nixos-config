{
  config,
  lib,
  pkgs,
  ...
}:

{
  home-manager.sharedModules = [
    {
      home.packages = with pkgs; [
        nh

        nodejs
        python3
        uv
        rustc
        jdk21
        cargo
        clippy
        rustfmt
        rust-analyzer
        go
        bun
        pipx
        php
        ripgrep
        fd
        bat
        jq
        tree
        htop
        act
        terraform
        awscli2
        postgresql_18

        obsidian
        gnumake
        cmake
        httpie
        wireguard-ui
        neovim

        claude-code
        opencode

        foundry
        cloc

        pandoc

      ];

      programs.direnv = {
        enable = true;
        enableZshIntegration = true;
      };
    }
  ];
}
