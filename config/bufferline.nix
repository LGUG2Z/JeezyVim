{pkgs, ...}: {
  plugins.bufferline = {
    enable = pkgs.lib.mkDefault true;
    alwaysShowBufferline = pkgs.lib.mkDefault false;
    offsets = [
      {
        filetype = "NvimTree";
        text = "Explorer";
        highlight = "PanelHeading";
        padding = 1;
      }
    ];
  };
}
