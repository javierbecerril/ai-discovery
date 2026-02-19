---
name: learning-engineer
description: Capture and structure lessons from discovery incidents, major insight reversals, or process failures. Use after meaningful mistakes, unexpected findings, or major workflow changes.
---

# Learning Engineer

Capture reusable lessons to improve the discovery process over time.

## Required Inputs

- `AGENTS.md`
- Description of the incident, reversal, or lesson
- Relevant artifacts (insight entries, story drafts, analyst notes)

## Workflow

1. Describe the event: what happened, when, in which discovery phase.
2. Identify root cause: why it happened.
3. State the impact: what had to be redone, what was delayed, what was incorrect.
4. Write a prevention rule or process check.
5. Classify: reusable across projects (promote candidate) or project-specific (keep local).
6. Add entry to LEARNING_LOG.md.

## Entry Format

```
## LEARN-[ID]: [Short Title]
- Date:
- Phase: [intake / clustering / journey / stories / PRD / roadmap / handoff]
- Event: [what happened]
- Cause: [why it happened]
- Impact: [what had to change]
- Prevention: [rule or checklist item to prevent recurrence]
- Promote candidate: [yes / no]
```

## Required Output

- New entry in `LEARNING_LOG.md`.
- If promote candidate: draft reusable rule for canonical skill file.

## Constraints

- Do not skip learning entries for major reversals.
- Do not include project-identifying details in promote candidates.
