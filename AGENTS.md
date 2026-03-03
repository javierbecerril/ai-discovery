# AGENTS.md

This repository is an AI discovery and requirements translation system.

Operating model:
- You are the discovery lead (analyst, liaison, or researcher).
- The AI acts as your expert research partner.
- Skills act as specialized processors for each phase of the discovery workflow.

## Lifecycle Position

This workbench covers the **Discovery** and **Definition** phases of the 4D product
development framework. Development and Delivery happen downstream.

```
Discovery → Definition → Development → Delivery
[this workbench]          [engineering]  [rollout]
```

See `project_templates/PHASES.md` for full phase definitions, expected outcomes,
and milestone planning guidance.

## Core Artifacts

- `AGENTS.md`: orchestration entrypoint and skill routing.
- `project_templates/PROJECT_CONTEXT.md`: required discovery scope, stakeholders, and input inventory.
- `project_templates/INSIGHT_REGISTRY.md`: living document — all insights accumulate here.
- `skills/`: reusable execution skills for each discovery phase.

## Start Here Every Task

1. Load `AGENTS.md`.
2. Load `PROJECT_CONTEXT.md` (project-specific or from `project_templates/`).
3. Load `INSIGHT_REGISTRY.md` (current state of accumulated insights).
4. Pick the skill for the current phase.
5. Require handoff output if work must be delegated.

Prompt pattern:
```text
Follow AGENTS.md, skills/<SKILL_NAME>/SKILL.md, PROJECT_CONTEXT.md, and INSIGHT_REGISTRY.md.
Goal: ...
Deliverables: ...
Constraints: ...
```

## Skill Routing

### Phase 1 — Intake
Use `intake-synthesizer` when:
- New transcript, analyst notes, mockup description, or survey arrives.
- Output goes into INSIGHT_REGISTRY.md.

### Phase 2 — Clustering
Use `dedup-clusterer` when:
- Multiple inputs have been synthesized and need organization.
- Run after each major intake batch, not after every single input.
- Output: updated registry with theme clusters and dedup flags.

### Phase 3 — Journey Mapping
Use `journey-mapper` when:
- Themes are stable enough to map to workflow steps.
- Requires platform context in PROJECT_CONTEXT.md.
- Output: JOURNEY_MAP.md.

### Phase 4 — Story Writing
Use `story-writer` when:
- Journey map is drafted and themes are clustered.
- Output: individual story files or a consolidated story document.

### Phase 5 — PRD
Use `prd-builder` when:
- Stories are written and stable.
- A complete project overview is needed.
- Output: PRD.md.

### Phase 6 — Roadmap
Use `roadmap-prioritizer` when:
- Stories and PRD are ready.
- Engineering needs a sequenced work plan.
- Output: ROADMAP.md.

### Phase 7 — Engineering Handoff
Use `eng-handoff-packager` when:
- Ready to present to engineering team.
- Output: meeting-ready package (summary + top stories + design refs + open questions).

## Progressive Update Flow

```
New input arrives
    → intake-synthesizer adds to INSIGHT_REGISTRY.md
    → dedup-clusterer re-runs if themes affected
    → story-writer updates affected stories or adds new ones
    → prd-builder refreshes relevant sections
    → roadmap-prioritizer flags if sequencing needs review
```

## Supporting Skills

Attach only when needed:
- `skills/handoff-packet/`: transfer work between sessions or tools.
- `skills/handoff-ingestion/`: translate incoming instructions into discovery-ready tasks.
- `skills/learning-engineer/`: capture lessons from incidents or major reversals.

## Canonical Governance

Canonical (do not modify without promotion gate):
- `AGENTS.md`, `CLAUDE.md`, `skills/**`, `project_templates/**` (templates only), `scripts/**`

Project-local (do not promote by default):
- Filled `PROJECT_CONTEXT.md`, `INSIGHT_REGISTRY.md` with project data
- `JOURNEY_MAP.md`, stories, PRD, roadmap artifacts
- Handoff packets, learning logs with project facts

## Promotion Gate

Promote project learnings into canonical only when all are true:
1. Reusable across at least 2 discovery projects.
2. Improves reliability, clarity, or speed without project coupling.
3. Can be written as a general rule/checklist/example.
4. Contains no sensitive or project-identifying data.

## Safety Rails

Before editing canonical skill files:
1. State what reusable behavior is being improved.
2. State why the change is not project-specific.
3. Record expected impact on quality/speed/risk.
4. Keep edits minimal and scoped.
