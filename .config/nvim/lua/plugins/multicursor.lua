return {
  "mg979/vim-visual-multi",
  init = function()
    vim.g.VM_maps = {
      ["Select Cursor Down"] = "<C-j>",
      ["Select Cursor Up"] = "<C-k>",
    } 
  end
}
