# Portable OMC bundle for claude-safe

This generated `.claude` directory contains a no-plugin, no-network, sandbox-respecting subset of oh-my-claudecode (OMC).

## What to copy

Copy the generated `.claude` directory into a project that `claude-safe` is allowed to read:

```sh
cp -R <generated>/.claude /path/to/work/project/.claude
```

If project-local `.claude` discovery is unavailable, copy the same directory to an allowed Claude config directory and launch `claude-safe` with that config if your environment supports it:

```sh
CLAUDE_CONFIG_DIR=/allowed/path/to/.claude claude-safe
```

Do not run plugin marketplace install, `omc setup`, npm installers, MCP setup, or hook registration unless your workplace explicitly permits them.

## Included

- `CLAUDE.md` with a prepended `CLAUDE-SAFE PORTABLE OMC MODE` overlay
- `agents/` copied from OMC agent prompts
- `skills/` copied from full OMC skill bodies and bundled resources
- `commands/` copied as portable wrappers that resolve local skill bodies before plugin roots
- selected offline `docs/`, including `docs/shared/*`
- `settings.safe-example.json` with no hooks and no MCP servers
- `manifest.json` with version, counts, and included/excluded paths
- `FEATURE_MATRIX.md` with portable/degraded/unsupported behavior notes

## Counts at generation time

- Agents: 19
- Skills: 39
- Commands: 27
- Docs/files copied: 13

See `manifest.json` for exact names and source metadata.

## Feature expectations

The bundle preserves prompt/agent/skill guidance. It does not provide full OMC runtime parity by default because hooks, MCP, plugin installation, tmux/team orchestration, and global state writes are intentionally disabled unless `claude-safe` explicitly permits them.
