local util = require("lspconfig.util")

return {
  init_options = {
    unstable = true,
    importMap = "import_map.json"
  },
  root_dir = util.root_pattern("deno.json")
}
