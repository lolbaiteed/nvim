-- In your init.lua or snippets file
local ls = require("luasnip")
local i = ls.insert_node
local s = ls.snippet_node

local fmt = require("luasnip.extras.fmt").fmt

-- Define your snippets (like the iferr snippet)
local go_snippets = {
  s("iferr", fmt([[
if err != nil {{
    return {}
}}
  ]], {
    i(1, "err"),
  })),
  -- ... other snippets
}

-- Add snippets for Go filetype
ls.add_snippets("go", go_snippets)
