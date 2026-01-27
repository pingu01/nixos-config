{ pkgs, ... }:
{
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.limine = {
    enable = true;
    secureBoot.enable = true;
    maxGenerations = 3;
    extraEntries = ''
      /Windows 11
        protocol: efi
        path: guid(beb32385-b5db-4e1c-aca6-5262fd83cd45):/EFI/Microsoft/Boot/bootmgfw.efi
      /memtest86
        protocol: efi
        path: boot():/limine/efi/memtest86/memtest86.efi
    '';
    additionalFiles = {
      "efi/memtest86/memtest86.efi" = "${pkgs.memtest86-efi}/BOOTX64.efi";
    };
    style = {
      wallpapers = [ ];
      interface = {
        resolution = "1920x1080";
        helpHidden = true;
        branding = "pingu's workstation";
        brandingColor = 6;
      };
    };
  };
}