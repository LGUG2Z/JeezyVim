local status_ok, alpha = pcall(require, 'alpha')
if not status_ok then
  return
end

local dashboard = require 'alpha.themes.dashboard'
dashboard.section.header.val = {
  '                                                                       ',
  '                                                                       ',
  '                                                                       ',
  '                                                                       ',
  '                                                                       ',
  '                                                                       ',
  '                                                                       ',
  '      ██╗███████╗███████╗███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗      ',
  '      ██║██╔════╝██╔════╝╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      ',
  '      ██║█████╗  █████╗    ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║      ',
  ' ██   ██║██╔══╝  ██╔══╝   ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║      ',
  ' ╚█████╔╝███████╗███████╗███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║      ',
  '  ╚════╝ ╚══════╝╚══════╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝      ',
  '                                                                       ',
  '                                                                       ',
  '                                                                       ',
  '                                                                       ',
  '                                                                       ',
  '                                                                       ',
}
dashboard.section.buttons.val = {
  dashboard.button('e', '󱝩  Explorer', ':NvimTreeToggle<CR>'),
  dashboard.button(
    'f',
    '  Find file',
    ':Telescope frecency workspace=CWD theme=dropdown<CR>'
  ),
  dashboard.button('n', '  New file', ':ene <BAR> startinsert<CR>'),
  dashboard.button(
    'r',
    '󱝩  Recently used files',
    ':Telescope oldfiles theme=dropdown<CR>'
  ),
  dashboard.button('q', '  Quit JeezyVim', ':qa<CR>'),
}

dashboard.section.footer.val = 'Free Palestine'

dashboard.section.footer.opts.hl = 'Type'
dashboard.section.header.opts.hl = 'Include'
dashboard.section.buttons.opts.hl = 'Keyword'

dashboard.opts.opts.noautocmd = false
alpha.setup(dashboard.opts)
