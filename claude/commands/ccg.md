---
description: ""
---
# ccg (portable claude-safe)

## Claude-Safe Portable Dispatch

This wrapper is part of a portable no-plugin OMC `.claude` bundle. Resolve the full skill instructions in this order before using plugin/package fallbacks:

1. Project-local transferred bundle: `.claude/skills/ccg/SKILL.md`.
2. Active Claude config directory: `$CLAUDE_CONFIG_DIR/skills/ccg/SKILL.md` (or `[$CLAUDE_CONFIG_DIR|~/.claude]/skills/ccg/SKILL.md`).
3. Sibling generated tree path relative to this command file: `../skills/ccg/SKILL.md`.
4. Legacy/package path if the session is launched from an OMC checkout: `skills/ccg/SKILL.md`.
5. Optional plugin roots only if present and permitted by `claude-safe`: `$CLAUDE_PLUGIN_ROOT/skills/ccg/SKILL.md` or `$OMC_PLUGIN_ROOT/skills/ccg/SKILL.md`.

If none of those paths are readable, report that the portable skill body is missing. Do not install plugins or fetch the skill from the internet.

The portable dispatch and safe-mode rules above override any original OMC command dispatch text below.


## Portable argument passthrough

Treat the user's arguments as:

```text
$ARGUMENTS
```

## Original OMC command guidance

The portable dispatch and safe-mode rules above override all original command guidance below.

# OMC ccg

This compatibility command keeps `/oh-my-claudecode:ccg` available without loading the full `ccg` skill description in every Claude Code session.
