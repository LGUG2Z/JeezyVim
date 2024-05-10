{
  plugins.lsp = {
    enable = true;
    servers = {
      bashls.enable = true;
      dockerls.enable = true;
      gopls.enable = true;
      jsonls.enable = true;
      marksman.enable = true;
      nil_ls.enable = true;
      pyright.enable = true;
      tsserver.enable = true;
      lua-ls.enable = true;
      rust-analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
      tailwindcss.enable = true;
      typst-lsp.enable = true;
      cssls.enable = true;
      html.enable = true;
      htmx.enable = true;
      solargraph.enable = true;
      yamlls.enable = true;
      taplo.enable = true;
    };
  };

  plugins.lsp-format.enable = true;
}
