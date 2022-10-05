vim.opt.laststatus = 2
vim.opt.showtabline = 2
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.mouse = 'a'
vim.opt.foldenable = false

-- color scheme
vim.cmd("colorscheme tokyonight-night")

-- status line
require('staline').setup {
    defaults = {
        expand_null_ls = false,  -- This expands out all the null-ls sources to be shown
        left_separator  = "",   -- 
        right_separator = "█",  --  
        full_path       = false,
        line_column     = "[%l/%L] :%c 並%p%% ", -- `:h stl` to see all flags.
        fg              = "#000000",  -- Foreground text color.
        bg              = "none",     -- Default background is transparent.
        inactive_color  = "#303030",
        inactive_bgcolor = "none",
        true_colors     = false,      -- true lsp colors.
        font_active     = "none",     -- "bold", "italic", "bold,italic", etc
        mod_symbol      = "  ",
        lsp_client_symbol = " ",
        branch_symbol   = " ",
        cool_symbol     = " ",       -- Change this to override default OS icon.
        null_ls_symbol = "",          -- A symbol to indicate that a source is coming from null-ls
    },
    mode_colors = {
        n = "#32a8a4",
        i = "#06c91a",
        c = "#e27d60",
        v = "#c006c9",   -- etc..
    },
    mode_icons = {
        n = " ",
        i = " ",
        c = " ",
        v = " ",   -- etc..
    },
    sections = {
        left = { '- ', '-mode', '-branch', 'left_sep_double', ' ', 'file_name', 'file_size' },
        mid  = { 'lsp' },
        right = { 'cool_symbol', 'right_sep_double', '-line_column' },
    },
    special_table = {
        NvimTree = { 'NvimTree', ' ' },
        packer = { 'Packer',' ' },        -- etc
    },
    lsp_symbols = {
        Error=" ",
        Info=" ",
        Warn=" ",
        Hint="",
    },
}

-- file tree
require("nvim-tree").setup({
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})


-- buffer line
require("bufferline").setup{}

-- cursor line
require('nvim-cursorline').setup {
  cursorline = {
    enable = true,
    timeout = 1000,
    number = false,
  },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
  }
}

-- scrollbar
require('scrollview').setup({
  excluded_filetypes = {'nerdtree'},
  current_only = true,
  winblend = 75
})

