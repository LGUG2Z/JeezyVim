{
  config.globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  config.keymaps = [
    {
      mode = "";
      key = "<Space>";
      action = "<Nop>";
      options = {
        noremap = true;
        silent = true;
      };
    }

    {
      action = ":bnext<cr>";
      key = "<C-]>";
      mode = "n";
    }

    {
      action = "o<Esc>";
      key = "o";
      mode = "n";
    }

    {
      action = "O<Esc>";
      key = "O";
      mode = "n";
    }

    {
      action = ":vsplit<CR>";
      key = "|";
      mode = "n";
    }

    {
      action = ":split<CR>";
      key = "-";
      mode = "n";
    }

    # Terminal escape back to nvim
    {
      action = "<C-\\><C-n>";
      key = "<Esc>";
      mode = "t";
    }

    # Window navigation
    {
      action = "<C-w>h";
      key = "<C-h>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Move to the window on the left";
      };
    }
    {
      action = "<C-w>j";
      key = "<C-j>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Move to the window below";
      };
    }
    {
      action = "<C-w>k";
      key = "<C-k>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Move to the window above";
      };
    }
    {
      action = "<C-w>l";
      key = "<C-l>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Move to the window on the right";
      };
    }

    # Tab navigation
    {
      action = "<cmd>tabprevious<CR>";
      key = "[t";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "previous tab";
      };
    }
    {
      action = "<cmd>tabnext<CR>";
      key = "]t";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "next tab";
      };
    }

    # Resize window with Ctrl + arrow keys
    {
      action = "<cmd>resize +4<CR>";
      key = "<C-Up>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Increase window height";
      };
    }
    {
      action = "<cmd>resize -4<CR>";
      key = "<C-Down>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Decrease window height";
      };
    }
    {
      action = "<cmd>vertical resize +4<CR>";
      key = "<C-Left>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Increase window width";
      };
    }
    {
      action = "<cmd>vertical resize -4<CR>";
      key = "<C-Right>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Decrease window width";
      };
    }

    # Navigate buffers
    {
      action = "<cmd>bprevious<CR>";
      key = "[b";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "previous buffer";
      };
    }
    {
      action = "<cmd>bnext<CR>";
      key = "]b";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "next buffer";
      };
    }

    # Move text up and down
    {
      action = "<cmd>move .+1<CR>==";
      key = "<A-j>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Move line down";
      };
    }
    {
      action = "<cmd>move .-2<CR>==";
      key = "<A-k>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Move line up";
      };
    }

    # Turn off search highlight
    {
      action = "<cmd>nohl<CR>";
      key = "<C-n>";
      mode = "n";
      options = {
        noremap = true;
        silent = true;
        desc = "Clear search highlight";
      };
    }

    # Stay in visual mode while indenting
    {
      action = "<gv";
      key = "<";
      mode = "v";
      options = {
        noremap = true;
        silent = true;
        desc = "Indent left";
      };
    }
    {
      action = ">gv";
      key = ">";
      mode = "v";
      options = {
        noremap = true;
        silent = true;
        desc = "Indent right";
      };
    }
    # Move text up and down in visual mode
    {
      action = ":move '>+1<CR>gv=gv";
      key = "<A-j>";
      mode = "v";
      options = {
        noremap = true;
        silent = true;
        desc = "Move line down";
      };
    }
    {
      action = ":move '<-2<CR>gv=gv";
      key = "<A-k>";
      mode = "v";
      options = {
        noremap = true;
        silent = true;
        desc = "Move line up";
      };
    }
    # Visual mode paste
    {
      action = ''"_dP'';
      key = "p";
      mode = "v";
      options = {
        noremap = true;
        silent = true;
        desc = "Paste without yanking";
      };
    }
  ];
}
