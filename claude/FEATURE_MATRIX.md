# Portable OMC feature matrix for claude-safe

## Portable by default

These features are mostly markdown/prompt driven and work best in a no-plugin bundle when local files and normal Claude Code tools are available:

- Agent prompts in `agents/` (`explore`, `planner`, `architect`, `executor`, `critic`, `code-reviewer`, `security-reviewer`, `test-engineer`, `writer`, and related roles)
- Planning and review skills such as `plan`, `ralplan`, `deep-interview`, `ai-slop-cleaner`, `visual-verdict` when screenshots/images are local, `skill`, `skillify`, `trace` as local guidance, and `omc-reference`
- Local/offline documentation in `docs/`
- Portable command wrappers in `commands/`

## Degraded prompt-only/runtime-limited

These skills remain bundled for their instructions, but full OMC behavior depends on hooks, state writes, tmux/team runtime, external CLIs, MCP, notifications, or installer access. In claude-safe, treat them as prompt discipline unless explicitly permitted:

- `ask`
- `autopilot`
- `autoresearch`
- `cancel`
- `ccg`
- `configure-notifications`
- `deep-dive`
- `external-context`
- `hud`
- `mcp-setup`
- `omc-doctor`
- `omc-setup`
- `omc-teams`
- `project-session-manager`
- `ralph`
- `release`
- `sciomc`
- `self-improve`
- `setup`
- `team`
- `ultragoal`
- `ultraqa`
- `ultrawork`
- `wiki`
- `writer-memory`

For these degraded skills, the portable generator excludes executable/script runtime payloads from copied skill resources. The bundled `SKILL.md` files remain as prompt guidance, but shell/Node/Python/TypeScript implementation files are not default portable features.

Each degraded skill `SKILL.md` also receives a local claude-safe warning banner so the prompt-only limitation travels with the skill body even when opened outside the root `CLAUDE.md` context.

## Unsupported by default

The generated default settings intentionally do **not** enable:

- OMC plugin installation or marketplace setup
- npm/bun/curl installation flows
- hooks from `hooks/hooks.json`
- MCP servers from `.mcp.json`
- HUD/statusline installation
- global `~/.claude` mutation
- internet lookup or external documentation fetching

If your workplace later approves any of these, add them manually in an allowed config path and document the approval.
