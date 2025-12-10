{ ... }:
{
  imports = [
    ./nix.nix
    ./packages.nix
    ./boot.nix
    ./development.nix
    ./nvidia.nix
    ./desktop.nix
  ];
}
