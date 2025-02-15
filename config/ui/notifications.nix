{pkgs, ...}: {
  plugins.notify = {
    enable = pkgs.lib.mkDefault true;
    settings = {
      level = "info";
      background_color = "#191724";
    };
  };
}
