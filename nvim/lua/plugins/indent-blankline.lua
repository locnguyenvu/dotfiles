vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

require("ibl").setup {
    debounce = 100,
    indent = { 
        highlight = { "Function", "Label" },
        smart_indent_cap = true,
        priority = 2
    },
    whitespace = { highlight = { "Whitespace", "NonText" } },
    scope = {
        highlight = { "Function", "Label" },
    }
}
