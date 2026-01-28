{
  config,
  lib,
  pkgs,
  ...
}:
# test
{
  home-manager.sharedModules = [
    {
      home.packages = with pkgs; [
        nmap
        ffuf
        gobuster
        sqlmap
        nikto
        mitmproxy
        openvpn
        samba
        python313Packages.impacket
        evil-winrm
        exiftool
        hashcat
        enum4linux
        freerdp
        tor
        dalfox
        slither-analyzer
        dnsrecon
        httpie
        (penelope.overrideAttrs (oldAttrs: {
          version = "0.14.8";
          src = fetchFromGitHub {
            owner = "brightio";
            repo = "penelope";
            rev = "v0.14.8";
            hash = "sha256-m4EYP1lKte8r9Xa/xAuv6aiwMNha+B8HXUCizH0JgmI=";
          };
        }))
      ];

      programs.direnv = {
        enable = true;
        enableZshIntegration = true;
      };
    }
  ];
}
