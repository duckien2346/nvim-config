return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = true,
  priority = 1000,
  opts = {
    transparent_background = true,
    integrations = {
      alpha = true,
      cmp = true,
      flash = true,
      gitsigns = true,
      illuminate = true,
      indent_blankline = { enabled = true },
      lsp_trouble = true,
      mason = true,
      mini = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
        virtual_text = {
          errors = { "italic" },
          hints = { "italic" },
          warnings = { "italic" },
          information = { "italic" },
        },
      },
      navic = { enabled = true, custom_bg = "lualine" },
      nvimtree = { enabled = true, show_root = true },
      neotest = true,
      noice = true,
      notify = true,
      neotree = true,
      semantic_tokens = true,
      telescope = true,
      treesitter = true,
      which_key = true,
      bufferline = true,
    },

    custom_highlights = function(colors)
      return {
        -- ColorColumn = { bg = "foam", blend = 0 },

        -- Blend colours against the "base" background
        -- CursorLine = { bg = colors.surface, blend = 75 },
        StatusLine = { fg = colors.mauve, bg = colors.surface0 },
        StatusLineNC = { fg = colors.surface2, bg = colors.none },
        -- FloatTitle = { fg = colors.pink },

        -- NvimTree
        -- NvimTreeStatusLineNC = { bg = colors.none },
        NvimTreeIndentMarker = { fg = colors.teal },

        -- Search = { fg = "base", bg = colors.pink },
        -- CurSearch = { fg = "base", bg = colors.pink, inherit = false },
      }
    end,
  },
}

-- local mocha = {
-- 	rosewater = "#f5e0dc",
-- 	flamingo = "#f2cdcd",
-- 	pink = "#f5c2e7",
-- 	mauve = "#cba6f7",
-- 	red = "#f38ba8",
-- 	maroon = "#eba0ac",
-- 	peach = "#fab387",
-- 	yellow = "#f9e2af",
-- 	green = "#a6e3a1",
-- 	teal = "#94e2d5",
-- 	sky = "#89dceb",
-- 	sapphire = "#74c7ec",
-- 	blue = "#89b4fa",
-- 	lavender = "#b4befe",
-- 	text = "#cdd6f4",
-- 	subtext1 = "#bac2de",
-- 	subtext0 = "#a6adc8",
-- 	overlay2 = "#9399b2",
-- 	overlay1 = "#7f849c",
-- 	overlay0 = "#6c7086",
-- 	surface2 = "#585b70",
-- 	surface1 = "#45475a",
-- 	surface0 = "#313244",
-- 	base = "#1e1e2e",
-- 	mantle = "#181825",
-- 	crust = "#11111b",
-- }
--
-- local macchiato = {
-- 	rosewater = "#f4dbd6",
-- 	flamingo = "#f0c6c6",
-- 	pink = "#f5bde6",
-- 	mauve = "#c6a0f6",
-- 	red = "#ed8796",
-- 	maroon = "#ee99a0",
-- 	peach = "#f5a97f",
-- 	yellow = "#eed49f",
-- 	green = "#a6da95",
-- 	teal = "#8bd5ca",
-- 	sky = "#91d7e3",
-- 	sapphire = "#7dc4e4",
-- 	blue = "#8aadf4",
-- 	lavender = "#b7bdf8",
-- 	text = "#cad3f5",
-- 	subtext1 = "#b8c0e0",
-- 	subtext0 = "#a5adcb",
-- 	overlay2 = "#939ab7",
-- 	overlay1 = "#8087a2",
-- 	overlay0 = "#6e738d",
-- 	surface2 = "#5b6078",
-- 	surface1 = "#494d64",
-- 	surface0 = "#363a4f",
-- 	base = "#24273a",
-- 	mantle = "#1e2030",
-- 	crust = "#181926",
-- }
--
-- local frappe = {
-- 	rosewater = "#f2d5cf",
-- 	flamingo = "#eebebe",
-- 	pink = "#f4b8e4",
-- 	mauve = "#ca9ee6",
-- 	red = "#e78284",
-- 	maroon = "#ea999c",
-- 	peach = "#ef9f76",
-- 	yellow = "#e5c890",
-- 	green = "#a6d189",
-- 	teal = "#81c8be",
-- 	sky = "#99d1db",
-- 	sapphire = "#85c1dc",
-- 	blue = "#8caaee",
-- 	lavender = "#babbf1",
-- 	text = "#c6d0f5",
-- 	subtext1 = "#b5bfe2",
-- 	subtext0 = "#a5adce",
-- 	overlay2 = "#949cbb",
-- 	overlay1 = "#838ba7",
-- 	overlay0 = "#737994",
-- 	surface2 = "#626880",
-- 	surface1 = "#51576d",
-- 	surface0 = "#414559",
-- 	base = "#303446",
-- 	mantle = "#292c3c",
-- 	crust = "#232634",
-- }
