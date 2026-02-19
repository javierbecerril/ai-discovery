---
name: handoff-ingestion
description: Translate an incoming handoff packet or external instruction into a clear, discovery-phase-ready task. Use at the start of a session when receiving work from another session or collaborator.
---

# Handoff Ingestion

Orient to incoming context and produce a clear execution plan for the current session.

## Required Inputs

- `AGENTS.md`
- Incoming handoff packet or instruction set
- Current `INSIGHT_REGISTRY.md` state
- Current `PROJECT_CONTEXT.md`

## Workflow

1. Read the incoming handoff packet or instruction fully before acting.
2. Confirm which discovery phase is active.
3. Identify the lead skill for this session.
4. List what artifacts are available and current.
5. Surface any gaps, conflicts, or missing context before proceeding.
6. Produce a session execution plan: goal, deliverables, constraints, skill to use.

## Required Output

- Session execution plan (goal, phase, lead skill, deliverables, constraints).
- List of any gaps or missing inputs that need resolution before proceeding.

## Constraints

- Do not start execution before confirming the incoming context is complete.
- Surface conflicts between incoming instructions and existing artifacts explicitly.
