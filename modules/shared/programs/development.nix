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
        rustc
        zulu25
        cargo
        clippy
        rustfmt
        rust-analyzer

        go
        bun
        pipx

        ripgrep
        fd
        bat
        jq
        tree
        htop
        act

        obsidian
        gnumake
        cmake
        httpie
        wireguard-ui
        neovim

        claude-code

        foundry

      ];

      programs.direnv = {
        enable = true;
        enableZshIntegration = true;
      };
    }
  ];
}
