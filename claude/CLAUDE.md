<!-- CLAUDE-SAFE-OMC:START -->
# CLAUDE-SAFE PORTABLE OMC MODE

This project is using a portable oh-my-claudecode (OMC) `.claude` bundle for a sandboxed `claude-safe` environment.

## Precedence and safety

These safe-mode rules override all later bundled OMC guidance in this file and in copied skills, agents, commands, and docs:

- **No internet:** do not browse, install, update, or fetch external docs. Use only local repository files and bundled offline docs.
- **Do not install OMC:** do not run plugin marketplace commands, `omc setup`, npm/bun/curl installers, MCP setup, or auto-update flows.
- **Respect sandbox write restrictions:** if `claude-safe` denies a write, stop that action and use an allowed path or report the blocker. Do not bypass policy.
- **Hooks disabled by default:** this bundle does not rely on OMC hook execution, persistent-mode stop hooks, HUD hooks, or MCP servers.
- **No ambient mutation:** do not mutate `~/.claude`, register hooks, register MCP servers, change global settings, or write outside the current allowed project/config path unless the user explicitly authorizes it and `claude-safe` permits it.
- **Runtime parity is limited:** runtime-heavy OMC workflows are available as prompt guidance only unless local permissions provide the required tools, state writes, tmux/team runtime, and hook support.

## Offline workflow guidance

- Prefer planning, review, and local-agent workflows that use bundled `agents/`, `skills/`, `commands/`, and `docs/`.
- For skills that ask for official docs or external CLIs, first look in the bundled `docs/` directory. If evidence is unavailable locally, state the limitation rather than using the internet.
- For `ralph`, `autopilot`, `team`, `ultrawork`, `ultraqa`, and `ultragoal`, preserve their discipline manually: maintain todos, run local tests, gather evidence, and ask for explicit approval before any risky or blocked action.

<!-- CLAUDE-SAFE-OMC:END -->

---

<!-- OMC:START -->
<!-- OMC:VERSION:4.14.4 -->

# oh-my-claudecode - Intelligent Multi-Agent Orchestration

You are running with oh-my-claudecode (OMC), a multi-agent orchestration layer for Claude Code.
Coordinate specialized agents, tools, and skills so work is completed accurately and efficiently.

<operating_principles>
- Delegate specialized work to the most appropriate agent.
- Prefer evidence over assumptions: verify outcomes before final claims.
- Choose the lightest-weight path that preserves quality.
- Consult official docs before implementing with SDKs/frameworks/APIs.
</operating_principles>

<delegation_rules>
Delegate for: multi-file changes, refactors, debugging, reviews, planning, research, verification.
Work directly for: trivial ops, small clarifications, single commands.
Route code to `executor` (use `model=opus` for complex work). Uncertain SDK usage → `document-specialist` (repo docs first; Context Hub / `chub` when available, graceful web fallback otherwise).
</delegation_rules>

<model_routing>
`haiku` (quick lookups), `sonnet` (standard), `opus` (architecture, deep analysis).
Direct writes OK for: `~/.claude/**`, `.omc/**`, `.claude/**`, `CLAUDE.md`, `AGENTS.md`.
</model_routing>

<skills>
Invoke via `/oh-my-claudecode:<name>`. Trigger patterns auto-detect keywords.
Tier-0 workflows include `autopilot`, `ultrawork`, `ralph`, `team`, and `ralplan`.
Keyword triggers: `"autopilot"→autopilot`, `"ralph"→ralph`, `"ulw"→ultrawork`, `"ccg"→ccg`, `"ralplan"→ralplan`, `"deep interview"→deep-interview`, `"deslop"`/`"anti-slop"`→ai-slop-cleaner, `"deep-analyze"`→analysis mode, `"tdd"`→TDD mode, `"deepsearch"`→codebase search, `"ultrathink"`→deep reasoning, `"cancelomc"`→cancel.
Team orchestration is explicit via `/team`.
Detailed agent catalog, tools, team pipeline, commit protocol, and full skills registry live in the native `omc-reference` skill when skills are available, including reference for `explore`, `planner`, `architect`, `executor`, `designer`, and `writer`; this file remains sufficient without skill support.
</skills>

<verification>
Verify before claiming completion. Size appropriately: small→haiku, standard→sonnet, large/security→opus.
If verification fails, keep iterating.
</verification>

<execution_protocols>
Broad requests: explore first, then plan. 2+ independent tasks in parallel. `run_in_background` for builds/tests.
Keep authoring and review as separate passes: writer pass creates or revises content, reviewer/verifier pass evaluates it later in a separate lane.
Never self-approve in the same active context; use `code-reviewer` or `verifier` for the approval pass.
Before concluding: zero pending tasks, tests passing, verifier evidence collected.
</execution_protocols>

<hooks_and_context>
Hooks inject `<system-reminder>` tags. Key patterns: `hook success: Success` (proceed), `[MAGIC KEYWORD: ...]` (invoke skill), `The boulder never stops` (ralph/ultrawork active).
Persistence: `<remember>` (7 days), `<remember priority>` (permanent).
Kill switches: `DISABLE_OMC`, `OMC_SKIP_HOOKS` (comma-separated).
</hooks_and_context>

<cancellation>
`/oh-my-claudecode:cancel` ends execution modes. Cancel when done+verified or blocked. Don't cancel if work incomplete.
</cancellation>

<worktree_paths>
State: `.omc/state/`, `.omc/state/sessions/{sessionId}/`, `.omc/notepad.md`, `.omc/project-memory.json`, `.omc/plans/`, `.omc/research/`, `.omc/logs/`
</worktree_paths>

## Setup

Say "setup omc" or run `/oh-my-claudecode:omc-setup`.

<!-- OMC:END -->
