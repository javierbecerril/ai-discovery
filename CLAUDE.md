# Claude Code Instructions — AI Discovery Workbench

## First Steps Every Session

1. Read `AGENTS.md` — skill routing, phase flow, canonical governance.
2. Read `PROJECT_CONTEXT.md` — discovery scope, stakeholders, input inventory.
3. Read `INSIGHT_REGISTRY.md` — current accumulated insights (living document).
4. Identify the current phase and lead skill.

## Skill Usage

Standard prompt pattern:
```text
Follow AGENTS.md, skills/<SKILL_NAME>/SKILL.md, PROJECT_CONTEXT.md, and INSIGHT_REGISTRY.md.
Goal: ...
Deliverables: ...
Constraints: ...
```

## Prompt Verification

For prompts that are long, complex, unclear, or underscoped:
- Surface what is ambiguous or missing before proceeding.
- Propose a refined version of the prompt.
- Wait for approval before executing.

Do not silently interpret vague instructions. Make the gap visible first.

## Session Cut Signals

Produce a handoff packet (`project_templates/HANDOFF_PACKET.md`) and end the session when:
- Phase shifts (intake → clustering → journey mapping → stories → PRD → roadmap → handoff).
- New input significantly changes the direction of existing insights.
- Responses becoming vague or repetitive (context degrading).
- A decision point requires analyst input before continuing.

## Incremental Update Behavior

When new input arrives mid-project:
- Always run intake-synthesizer first on the new input.
- Check if new insights invalidate or duplicate existing ones.
- Flag conflicts or contradictions explicitly — do not silently overwrite.
- Identify which downstream artifacts need updating and in what order.

## Canonical Governance

Canonical — do not modify without promotion gate:
- `AGENTS.md`, `CLAUDE.md`, `skills/**`, `project_templates/**` (templates only), `scripts/**`

Project-local — do not promote by default:
- Filled project artifacts, insight data, stories, PRD, roadmap, learning logs
