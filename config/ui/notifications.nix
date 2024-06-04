{pkgs, ...}: {
  plugins.notify = {
    enable = pkgs.lib.mkDefault true;
    level = "info";
    backgroundColour = "#191724";
  };
}
