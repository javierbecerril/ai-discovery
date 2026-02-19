# AI Discovery

An AI execution system for translating stakeholder input into structured product artifacts.

Operating model:
- You are the discovery lead (analyst, liaison, or researcher).
- The AI acts as your expert research partner.
- Skills act as specialized processors for each discovery phase.

## What This Repo Does

Takes raw stakeholder input — interviews, transcripts, analyst notes, mockups — and produces:
- Synthesized and deduplicated insights
- User journey maps
- Chunked user stories (ticket-ready)
- A detailed PRD
- A prioritized roadmap
- An engineering-ready handoff package

Supports progressive updates: new input can be added at any time and propagates through existing artifacts.

## Repository Structure

- `AGENTS.md`: orchestration entrypoint, phase routing, delegation rules.
- `CLAUDE.md`: Claude Code operating instructions.
- `skills/`: reusable skills for each discovery phase.
- `project_templates/`: templates for project context, insight registry, journey map, stories, PRD, roadmap, and handoff.
- `scripts/`: sync utilities.

## Discovery Phases

1. **Intake** — `skills/intake-synthesizer/`
2. **Clustering** — `skills/dedup-clusterer/`
3. **Journey Mapping** — `skills/journey-mapper/`
4. **Story Writing** — `skills/story-writer/`
5. **PRD** — `skills/prd-builder/`
6. **Roadmap** — `skills/roadmap-prioritizer/`
7. **Engineering Handoff** — `skills/eng-handoff-packager/`

## Prompt Pattern

```text
Follow AGENTS.md, skills/<SKILL_NAME>/SKILL.md, PROJECT_CONTEXT.md, and INSIGHT_REGISTRY.md.
Goal: ...
Deliverables: ...
Constraints: ...
```

## Setup for a New Project

1. Copy `project_templates/PROJECT_CONTEXT.md` to your project root and fill it in.
2. Copy `project_templates/INSIGHT_REGISTRY.md` to your project root (starts empty).
3. Copy `project_templates/CLAUDE.md` to your project root.
4. Begin with `intake-synthesizer` on your first input.

## Canonical vs Local

- Canonical: `AGENTS.md`, `CLAUDE.md`, `skills/**`, `project_templates/**` templates, `scripts/**`
- Local: filled project context, insight data, stories, PRD, roadmap, learning entries
