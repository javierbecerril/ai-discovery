---
name: journey-mapper
description: Map insight themes to the user's actual workflow steps through the platform. Shows where friction occurs at each step and what the desired state looks like. Use when themes are stable and platform context is available in PROJECT_CONTEXT.md.
---

# Journey Mapper

Produce a user journey map that connects insight themes to specific moments in the user's workflow.

## Required Inputs

- `AGENTS.md`
- `PROJECT_CONTEXT.md` (must include platform context: what the platform does, main workflow steps, user roles)
- `INSIGHT_REGISTRY.md` with theme clusters

## Workflow

1. Extract the main user workflow steps from PROJECT_CONTEXT.md.
2. For each workflow step, identify which insight themes occur there.
3. Describe the current state at each step: what the user does, what friction they encounter.
4. Describe the desired state: what the user wants to be able to do instead.
5. Note evidence (direct quote or observable moment) for each friction point.
6. Flag steps where no friction was reported — confirms working areas.
7. Produce JOURNEY_MAP.md.

## Journey Map Entry Format

```
## Step [N]: [Step Name]
- Current state: [what the user does now]
- Friction: [pain point at this step — link to THEME-XX]
- Evidence: "[direct quote or observable moment]"
- Desired state: [what they want instead]
- Design reference: [mockup or screenshot reference if available — or "none"]
- Status: [friction reported / no friction reported]
```

## Quality Gates

- Every friction point links to at least one INSIGHT_REGISTRY theme.
- Desired states are grounded in user evidence, not analyst assumptions (analyst ideas go in a separate note).
- Steps without friction are explicitly noted.
- Journey map covers the full workflow, not only problem areas.

## Required Output

- `JOURNEY_MAP.md` structured by workflow steps.
- Summary of highest-friction steps for prioritization input to story-writer and roadmap-prioritizer.

## Constraints

- Do not invent workflow steps not present in PROJECT_CONTEXT.md or stakeholder inputs.
- Do not write stories in this step.
- Flag gaps where a workflow step is unclear and needs analyst clarification before continuing.
