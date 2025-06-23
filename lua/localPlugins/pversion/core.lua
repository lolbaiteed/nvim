local M = {}
local ts = vim.treesitter
M.stable_version = "0.0.0"

local ignored_paths = {
    ".git",
    "node_modules",
    "dist",
    "build",
    "target",
    "venv",
    "__pycache__",
    "zig_out",
}

local supported_filetypes = {
  lua = { ext = "lua", lang = "lua" },
  ts = { ext = "ts", lang = "typescript" },
  js = { ext = "js", lang = "javascript" },
  py = { ext = "py", lang = "python" },
  sh = { ext = "sh", lang = "bash" },
  cpp = { ext = "cpp", lang = "cpp" },
  c = { ext = "c", lang = "c" },
  rs = { ext = "rs", lang = "rust" },
  go = { ext = "go", lang = "go" },
  java = { ext = "java", lang = "java" },
  zig = { ext = "zig", lang = "zig"},

}

local version_file = ".project-version"

local function find_project_root()
  local path = vim.fn.getcwd()
  while path ~= "/" do
    if vim.fn.isdirectory(path .. "/.git") == 1 then
      return path
    end
    path = vim.fn.fnamemodify(path, ":h")
  end
  return nil
end

local function is_ignored(path)
  for _, ignore in ipairs(ignored_paths) do
    if path:find("/" .. ignore .. "/") or path:match("/" .. ignore .. "$") then
      return true
    end
  end
  return false
end

local function build_find_command(root)
  local parts = {}
  for _, info in pairs(supported_filetypes) do
    table.insert(parts, string.format("-name '*.%s'", info.ext))
  end
  return string.format("find %s -type f \\( %s \\)", root, table.concat(parts, " -o "))
end

local function get_ts_lang(ft)
    local info = supported_filetypes[ft]
    return info and info.lang or ft
end

local function count_tagged_comments(patterns)
  local count = 0
  local root = find_project_root()
  local handle = io.popen(build_find_command(root))
  if not handle then return 0 end

  for file in handle:lines() do
    if is_ignored(file) then goto continue end

    local stat = vim.loop.fs_stat(file)
    if not stat or stat.type ~= "file" then goto continue end

    local bufnr = vim.fn.bufadd(file)
    vim.fn.setbufvar(bufnr, "&buflisted", 0)
    local ok_load = pcall(vim.fn.bufload, bufnr)
    if not ok_load then goto continue end

    local ft = vim.filetype.match({ buf = bufnr }) or "lua"
    local lang = get_ts_lang(ft)
    if not lang then goto continue end

    -- Ensure parser is installed
    if not require("nvim-treesitter.parsers").has_parser(lang) then
      print("Missing Tree-sitter parser for:", lang)
      goto continue
    end

    local ok_parser, parser = pcall(ts.get_parser, bufnr, lang)
    if not ok_parser or not parser then
      print("Parser failed for", file)
      goto continue
    end

    local tree = parser:parse()[1]
    if not tree then
      print("Parse failed for", file)
      goto continue
    end

    local root_node = tree:root()
    local ok_query, query = pcall(ts.query.parse, lang, [[
      (comment) @comment
    ]])
    if not ok_query then
      print("Query failed for", lang)
      goto continue
    end

    for _, node in query:iter_captures(root_node, bufnr, 0, -1) do
      local text = ts.get_node_text(node, bufnr)
      if text then
        local lower = text:lower()
        for _, pat in ipairs(patterns) do
          if lower:find(pat, 1, true) then
            count = count + 1
            break
          end
        end
      end
    end

    ::continue::
  end

  handle:close()
  return count
end

local function count_secure_tags()
    return count_tagged_comments({"@secure"})
end

local function count_refactorable_tags()
    return count_tagged_comments({ "@todo", "@fixme" })
end

local function count_lsp_errors()
  local count = 0
  local diagnostics = vim.diagnostic.get(nil, { severity = vim.diagnostic.severity.ERROR })
  if diagnostics then
    count = #diagnostics
  end
  return count
end

local function calculate_version()
  local secure = count_secure_tags()
  local refactorable = count_refactorable_tags()
  local compiler_errors = count_lsp_errors()
  return string.format("%d.%d.%d", secure, refactorable, compiler_errors)
end

local function get_version()
  local project_versions = {}
  local root = find_project_root()
  if not root then return nil end
  if project_versions[root] then
      return project_versions[root]
  end
  local f = io.open(root .. "/" .. version_file, "r")
  if not f then return nil end
  local version = f:read("*l")
  f:close()
  project_versions[root] = version
  return version
end

local function set_version(version)
  local root = find_project_root()
  if not root then
    print("No project root found.")
    return
  end
  local f = io.open(root .. "/" .. version_file, "w")
  f:write(version)
  f:close()
end

local function autoload()
  vim.api.nvim_create_autocmd({ "BufEnter", "DirChanged" }, {
    callback = function()
      local version = get_version()
      if version then
        vim.g.project_version_current = version
      else
        vim.g.project_version_current = "not set"
      end
    end,
  })
end

function M.setup()
  vim.api.nvim_create_user_command("ProjectUpdateVersion", function()
    local version = calculate_version()
    set_version(version)
    vim.g.project_version_current = version
    print("Updated project version: " .. version)
  end, {})

  vim.api.nvim_create_user_command("ProjectGetVersion", function()
    print("Current project version: " .. (vim.g.project_version_current or "not set"))
  end, {})

  autoload()
end

return M
