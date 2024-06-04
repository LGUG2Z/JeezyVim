{pkgs, ...}: {
  plugins.lspsaga = {
    enable = pkgs.lib.mkDefault true;
    ui.border = "rounded";
    ui.codeAction = "";
    beacon.enable = pkgs.lib.mkDefault true;
    implement = {
      enable = pkgs.lib.mkDefault true;
      sign = pkgs.lib.mkDefault false;
    };
    lightbulb = {
      enable = pkgs.lib.mkDefault true;
      sign = pkgs.lib.mkDefault true;
      virtualText = pkgs.lib.mkDefault false;
    };
    outline = {layout = "float";};
    symbolInWinbar.enable = pkgs.lib.mkDefault true;
  };
}
