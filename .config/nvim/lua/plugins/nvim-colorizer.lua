return {
  "NvChad/nvim-colorizer.lua",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("colorizer").setup({
      filetypes = { "*" },
      user_default_options = {
        RGB      = true,
        RRGGBBAA = true,
        names    = false,
        rgb_fn   = true,
        hsl_fn   = true,
        css      = true,
        css_fn   = true,
        mode     = "background",
      },
    })
  end,
}
