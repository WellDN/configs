require'nvim-treesitter.configs'.setup {
  ensure_installed = {
  "go",
  "javascript",
  "typescript",
  "c",
  "lua",
  "vim",
  "vimdoc",
  "ocaml"
  },

  sync_install = false,

  auto_install = true,

  highlight = {

    enable = true,

    additional_vim_regex_highlighting = false,
  },
}
