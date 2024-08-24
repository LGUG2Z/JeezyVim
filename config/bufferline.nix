{pkgs, ...}: {
  plugins.bufferline = {
    enable = pkgs.lib.mkDefault true;
    settings.options = {
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
  };
}
