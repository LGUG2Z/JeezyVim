{pkgs, ...}: {
  plugins.inc-rename.enable = pkgs.lib.mkDefault true;
}
