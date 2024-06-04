{pkgs, ...}: {
  colorschemes.kanagawa = {
    enable = pkgs.lib.mkDefault true;
  };
}
