return {
  "aweis89/ai-commit-msg.nvim",
  ft = "gitcommit",
  dependencies = { "tpope/vim-fugitive" }, -- optional but nice
  opts = {
    provider = "openai",
    providers = {
      openai = {
        -- Point to GitHub Models instead of OpenAI
        endpoint = "https://models.github.ai/inference",
        api_key_env = "GITHUB_TOKEN",
        model = "openai/gpt-5",  -- or any GitHub Models model
      },
    },
  },
}
