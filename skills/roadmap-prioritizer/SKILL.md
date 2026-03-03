---
name: roadmap-prioritizer
description: Sequence and prioritize user stories into a phased delivery roadmap based on user impact, severity, frequency, and dependencies. Use when stories and PRD are ready and engineering needs a sequenced work plan.
---

# Roadmap Prioritizer

Produce a sequenced, justified roadmap for engineering delivery.

## Required Inputs

- `AGENTS.md`
- `PROJECT_CONTEXT.md`
- Full story set with priority and dependency flags
- `INSIGHT_REGISTRY.md` theme clusters (for severity and frequency signals)
- `project_templates/PHASES.md`

## Workflow

1. Review all stories with their priority, severity, and frequency signals.
2. Identify dependencies between stories (must-complete-before relationships).
3. Group stories into delivery phases within the Development phase (e.g., Phase 1: critical fixes, Phase 2: workflow improvements, Phase 3: polish). Reference `project_templates/PHASES.md` for what Development is expected to produce.
4. Within each phase, sequence by impact: high severity + high frequency first.
5. Flag stories that need design or scope clarification before they can be scheduled.
6. Add a Delivery / Rollout section with the standard rollout milestone table from `project_templates/PHASES.md`. Fill in what is known; leave the rest for the product team to complete.
7. Produce ROADMAP.md.

## Roadmap Entry Format

```
## Phase [N]: [Phase Name]
Goal: [what this phase delivers for the user]

| Story ID | Title | Priority | Depends On | Needs Clarification |
|----------|-------|----------|------------|---------------------|
| STORY-XX | ...   | High     | none       | no                  |
| STORY-YY | ...   | Medium   | STORY-XX   | no                  |
```

## Quality Gates

- Every phase has a clear goal statement tied to user impact.
- Dependencies are explicit and justified.
- No story is scheduled before its dependency is complete.
- Stories needing clarification are flagged, not silently deprioritized.

## Required Output

- `ROADMAP.md` with phased delivery plan.
- Summary for engineering: total phases, total stories, critical path highlights.

## Constraints

- Do not assign timelines or duration estimates.
- Do not deprioritize issues based on assumed engineering effort.
- Prioritize by user impact, not by implementation convenience.
