{pkgs, ...}: {
  plugins.ts-autotag.enable = pkgs.lib.mkDefault true;
}
