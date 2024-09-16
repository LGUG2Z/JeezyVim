{pkgs, ...}: {
  plugins.specs = {
    enable = pkgs.lib.mkDefault true;
    settings = {
      min_jump = 10;
      increment = 10;
      delay = 10;
      width = 20;
    };
  };
}
