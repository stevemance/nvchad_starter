local codecompanion = require "codecompanion"

codecompanion.setup {
  debug = true,
  display = {
    chat = {
      render_headers = false,
    },
    diff = {
      provider = "mini_diff",
    },
  },
  strategies = {
    chat = {
      adapter = "anthropic",
    },
    inline = {
      adapter = "anthropic",
    },
    workflow = {
      adapter = "anthropic",
    },
    evaluate_prompts = {
      adapter = "anthropic",
    },
  },
}
