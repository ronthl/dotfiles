local ok, treesitter = pcall(require, 'nvim-treesitter.configs')
if (not ok) then return end

treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = {
    enable = true,
  },
  -- ensure these language parsers are installed
  ensure_installed = {
    "vimdoc",
    "lua",
    "json",
    "html",
    "css",
    "javascript",
    "typescript",
    "vue",
    "java",
    "kotlin",
    "go",
    "python",
    "yaml",
    "markdown",
    "markdown_inline",
    "dockerfile",
    "gitignore",
    "bash",
  },
})

local ok, treesitter_context = pcall(require, 'treesitter-context')
if (not ok) then return end

treesitter_context.setup{
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = true,
  multiline_threshold = 20, -- Maximum number of lines to show for a single context
  trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = nil,
  zindex = 20, -- The Z-index of the context window
  on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}
