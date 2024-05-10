{
  plugins.indent-blankline = {
    enable = true;
    settings = {
      indent.char = "│";
      whitespace.remove_blankline_trail = true;
      exclude.filetypes = [
        "help"
        "alpha"
        "dashboard"
        "neo-tree"
        "lazy"
        "notify"
        "toggleterm"
        "lazyterm"
        "lspinfo"
        "packer"
        "checkhealth"
        "help"
        "man"
        "gitcommit"
        "TelescopePrompt"
        "TelescopeResults"
        "\'\'"
      ];
    };
  };
}
