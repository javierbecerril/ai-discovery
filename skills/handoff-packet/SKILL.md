---
name: handoff-packet
description: Prepare a complete handoff document to transfer discovery work between sessions, tools, or collaborators with full context, scope, and next actions.
---

# Handoff Packet

Produce a handoff artifact that another session or agent can continue without losing context.

## Required Inputs

- `AGENTS.md`
- Current `INSIGHT_REGISTRY.md` state
- List of completed phases and pending phases
- Any open decisions or blockers

## Workflow

1. State what phase was just completed and what was produced.
2. Document the current state of all artifacts (insight registry, themes, journey map, stories, PRD, roadmap).
3. List decisions made and why.
4. List open risks, blockers, and unresolved questions.
5. State the exact next step: which phase, which skill, what input is needed.
6. Write a ready-to-paste prompt for the next session.

## Required Output

Completed handoff document using `project_templates/HANDOFF_PACKET.md`.

## Constraints

- Receiver must be able to continue without asking clarifying questions.
- Do not include assumptions as facts — label them clearly.
