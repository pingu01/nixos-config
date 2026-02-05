{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    ghostty
    vscode
  ];

  virtualisation.docker.enable = true;
}
