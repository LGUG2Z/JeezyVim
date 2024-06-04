{pkgs, ...}: {
  plugins.treesitter = {
    enable = pkgs.lib.mkDefault true;
  };
}
