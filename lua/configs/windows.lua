require("windows").setup {
  autowidth = {
    enable = true,
    winwidth = 5,
    equalalways = false,
  },
  ignore = {
    buftype = { "quickfix" },
    filetype = { "NvimTree", "undotree", "gundo" },
  },
  animation = {
    enable = true,
    duration = 150,
    fps = 30,
  },
}
