local function toggle_definition()
  -- Store the original cursor position
  local original_pos = vim.api.nvim_win_get_cursor(0)

  -- Attempt to jump to the definition
  vim.cmd 'Lspsaga goto_definition'

  -- Small delay to allow command to process; adjust as necessary
  vim.defer_fn(function()
    -- Get the new cursor position
    local new_pos = vim.api.nvim_win_get_cursor(0)

    -- Compare positions (line and column)
    if original_pos[1] == new_pos[1] and original_pos[2] == new_pos[2] then
      -- If the cursor hasn't moved, call finder
      vim.cmd 'Lspsaga finder'
    end
  end, 100) -- Delay time in milliseconds
end

vim.api.nvim_create_user_command('ToggleDefinition', toggle_definition, {})

if string.match(vim.loop.os_uname().release, 'WSL2') then
  vim.g.clipboard = {
    copy = {
      ['+'] = 'win32yank.exe -i --crlf',
      ['*'] = 'win32yank.exe -i --crlf',
    },
    paste = {
      ['+'] = 'win32yank.exe -o --lf',
      ['*'] = 'win32yank.exe -o --lf',
    },
  }
end
