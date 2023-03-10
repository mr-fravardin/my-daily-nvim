vim.cmd [[highlight IndentBlanklineIndent1 guibg=#282A3A gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guibg=#4D455D gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextChar guifg=#00FF00 gui=nocombine]]

require("indent_blankline").setup {
    char = "",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    space_char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    show_trailing_blankline_indent = false,
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

