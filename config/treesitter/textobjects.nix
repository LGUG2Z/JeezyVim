{
  plugins.treesitter-textobjects = {
    enable = true;
    select = {
      enable = true;
      lookahead = true;
      keymaps = {
        "af" = {query = "@function.outer";};
        "if" = {query = "@function.inner";};
        "ao" = {query = "@class.outer";};
        "io" = {query = "@class.inner";};
        "ac" = {query = "@conditional.outer";};
        "ic" = {query = "@conditional.inner";};
        "al" = {query = "@loop.outer";};
        "il" = {query = "@loop.inner";};
      };
    };
    swap = {
      enable = true;
      swapNext = {
        "<leader>pn" = {
          query = "@parameter.inner";
          desc = "Parameter swap next";
        };
      };
      swapPrevious = {
        "<leader>pp" = {
          query = "@parameter.inner";
          desc = "Parameter swap prev";
        };
      };
    };
    move = {
      enable = true;
      setJumps = true;
      gotoNextStart = {
        "]f" = {query = "@function.outer";};
        "]c" = {query = "@conditional.outer";};
        "]l" = {query = "@loop.outer";};
        "]o" = {query = "@class.outer";};
      };
      gotoNextEnd = {
        "]F" = {query = "@function.outer";};
        "]C" = {query = "@conditional.outer";};
        "]L" = {query = "@loop.outer";};
        "]O" = {query = "@class.outer";};
      };
      gotoPreviousStart = {
        "[f" = {query = "@function.outer";};
        "[c" = {query = "@conditional.outer";};
        "[l" = {query = "@loop.outer";};
        "[o" = {query = "@class.outer";};
      };
      gotoPreviousEnd = {
        "[F" = {query = "@function.outer";};
        "[C" = {query = "@conditional.outer";};
        "[L" = {query = "@loop.outer";};
        "[O" = {query = "@class.outer";};
      };
    };
  };
}
