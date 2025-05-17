return {
  {
    dir = vim.fn.stdpath("config") .. "/lua/myplugins/todo_config",
    lazy = false,
    config = function()
      require("myplugins.todo_config").setup()
    end,
  },
}
