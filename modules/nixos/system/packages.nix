{ pkgs, zen-browser, ... }:
{
  environment.systemPackages = with pkgs; [
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
  ];
}
