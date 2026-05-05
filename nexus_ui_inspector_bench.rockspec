package = "nexus-ui-inspector-bench"
version = "0.1-1"
source = { url = "." }
description = { summary = "Develop a Lua command-oriented project for inspector scenarios with append-only fixtures, checkpoint recovery checks, and local-only command execution.", license = "MIT" }
build = { type = "builtin", modules = { policy = "src/policy.lua" } }
