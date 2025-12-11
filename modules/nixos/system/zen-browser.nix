{ pkgs, zen-browser, ... }:

let
  zenPkg = zen-browser.packages.${pkgs.system}.default;
in
{
  environment.systemPackages = [
    zenPkg
  ];

  environment.etc."xdg/share/applications/zen-browser.desktop".text = ''
    [Desktop Entry]
    Version=1.0
    Type=Application
    Name=Zen Browser
    Comment=Zen Browser Web Browser
    Exec=${zenPkg}/bin/zen
    Icon=${zenPkg}/share/icons/hicolor/128x128/apps/zen.png
    Categories=Network;WebBrowser;
    Terminal=false
  '';
}
