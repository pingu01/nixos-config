{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    ghostty
    vscode
  ];
}
