{pkgs, ...}: {
  plugins.lsp = {
    enable = pkgs.lib.mkDefault true;
    servers = {
      bashls.enable = pkgs.lib.mkDefault true;
      dockerls.enable = pkgs.lib.mkDefault true;
      gopls.enable = pkgs.lib.mkDefault true;
      jsonls.enable = pkgs.lib.mkDefault true;
      marksman.enable = pkgs.lib.mkDefault true;
      nil-ls.enable = pkgs.lib.mkDefault true;
      pyright.enable = pkgs.lib.mkDefault true;
      tsserver.enable = pkgs.lib.mkDefault true;
      lua-ls.enable = pkgs.lib.mkDefault true;
      rust-analyzer = {
        enable = pkgs.lib.mkDefault true;
        installCargo = pkgs.lib.mkDefault false;
        installRustc = pkgs.lib.mkDefault false;
      };
      tailwindcss.enable = pkgs.lib.mkDefault true;
      typst-lsp.enable = pkgs.lib.mkDefault true;
      cssls.enable = pkgs.lib.mkDefault true;
      html.enable = pkgs.lib.mkDefault true;
      htmx.enable = pkgs.lib.mkDefault true;
      solargraph.enable = pkgs.lib.mkDefault true;
      yamlls.enable = pkgs.lib.mkDefault true;
      taplo.enable = pkgs.lib.mkDefault true;
    };
  };

  plugins.lsp-format.enable = pkgs.lib.mkDefault true;
}
