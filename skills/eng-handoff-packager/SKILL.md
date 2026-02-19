---
name: eng-handoff-packager
description: Produce a concise, meeting-ready engineering handoff package from the full discovery output. Use when ready to present to the engineering team.
---

# Engineering Handoff Packager

Produce a package engineering can understand and act on without needing the full PRD upfront.

## Required Inputs

- `AGENTS.md`
- `PROJECT_CONTEXT.md`
- Full story set
- `PRD.md`
- `ROADMAP.md`
- Design references inventory (mockups, screenshots, links)

## Workflow

1. Write a one-page executive summary: problem, users affected, what was discovered, what is being asked of engineering.
2. Select the top 3–5 highest-priority stories for the meeting walkthrough.
3. For each top story: include title, user story statement, key evidence quote, acceptance criteria, and design reference.
4. Compile design references with descriptions so engineering can navigate them.
5. Write open questions for engineering: things only they can answer (technical feasibility, constraints, existing system behavior).
6. Write a suggested meeting agenda so the conversation stays structured.
7. Reference full PRD, roadmap, and story set as appendices.

## Package Structure

```
# Engineering Handoff: [Project Name]

## Executive Summary
## Top Stories for Meeting Walkthrough
## Design References
## Open Questions for Engineering
## Suggested Meeting Agenda
## Appendix: Full PRD | Full Roadmap | Full Story Set
```

## Quality Gates

- Executive summary is readable in under 2 minutes.
- Every top story includes at least one evidence quote from a stakeholder.
- Open questions are specific — no vague asks.
- Package can stand alone without the analyst present.

## Required Output

- Complete engineering handoff package document.
- Pre-meeting checklist: what to bring, what to present in what order.

## Constraints

- Do not include every story in the meeting walkthrough — select the most impactful.
- State the ask clearly in the executive summary — do not bury it.
- Do not include internal analyst notes not intended for engineering.
