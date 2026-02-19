---
name: story-writer
description: Write structured, ticket-ready user stories from insight themes and the journey map. Each story is scoped to one deliverable chunk. Use when themes are clustered and the journey map is drafted.
---

# Story Writer

Produce structured user stories that engineering can act on independently.

## Required Inputs

- `AGENTS.md`
- `PROJECT_CONTEXT.md`
- `INSIGHT_REGISTRY.md` with theme clusters
- `JOURNEY_MAP.md`
- `project_templates/STORY_TEMPLATE.md`

## Workflow

1. Review all theme clusters and the journey map.
2. Group related themes into story candidates — one story per distinct deliverable.
3. For each story: write title, persona, story statement, context with evidence, and acceptance criteria.
4. Link design references (mockups, screenshots) if available in PROJECT_CONTEXT.md.
5. Link related stories by ID where dependencies exist.
6. Assign rough priority (High / Medium / Low) based on severity and frequency signals from the registry.
7. Flag stories that need design or scope clarification before engineering can act.

## Story Format

```
## STORY-[ID]: [Title]
- Persona: [which user type]
- Story: As a [persona], I want [capability] so that [outcome].
- Context: [why this matters; include at least one direct quote as evidence]
- Acceptance Criteria:
  - [ ] [testable condition]
  - [ ] [testable condition]
- Design Reference: [mockup link, file name, or description — or "none"]
- Related Stories: [STORY-XX, STORY-YY — or "none"]
- Theme: [THEME-XX]
- Priority: [High / Medium / Low]
- Needs clarification: [yes / no — if yes, state what is unclear]
```

## Quality Gates

- Every story traces to at least one insight theme.
- Stories are independently actionable — engineering can work on each without requiring another to complete first (except where explicitly linked).
- Acceptance criteria are testable and unambiguous.
- Context includes at least one direct quote or observable evidence.
- No story is so large it cannot be completed in a single engineering iteration.

## Required Output

- Set of structured stories (individual files or a consolidated story document).
- Summary: total story count, breakdown by priority, list of stories needing clarification.

## Handoff Contract

- To `prd-builder`: full story set with theme links.
- To `roadmap-prioritizer`: story list with priority and dependency flags.

## Constraints

- Do not write stories without evidence.
- Do not combine multiple distinct deliverables into one story.
- Do not include implementation details — stories describe what, not how.
- Do not assign timelines or effort estimates.
