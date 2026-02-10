local function switch_c_h()
  local filename = vim.fn.expand('%:t')
  local basename = vim.fn.expand('%:r')
  local ext = vim.fn.expand('%:e')

  if ext == 'c' then
    vim.cmd('edit ' .. basename .. '.h')
  elseif ext == 'h' then
    vim.cmd('edit ' .. basename .. '.c')
  else
    print('Not a .c or .h file')
  end
end

vim.api.nvim_set_keymap('n', '<leader>sw', '', {
  noremap = true,
  silent = true,
  callback = switch_c_h
})