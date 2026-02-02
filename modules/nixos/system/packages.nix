{ pkgs, zen-browser, ... }:
{
  environment.systemPackages = with pkgs; [
    chromium
    discord
    spotify
    
    htop 
    tree
    gtk3
    glib
    gdk-pixbuf
    pango
    cairo
    atk

    protonvpn-gui

    dbeaver-bin
    sqlite

  # Firefox deps
    dbus
    nss
    nspr
    libxkbcommon
    alsa-lib
    cups

  # Aceleração
    mesa
    libdrm
    wayland

  # Codecs
    ffmpeg

  # Misc
    calibre
    flameshot
  ];
}
