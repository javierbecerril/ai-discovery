---
name: prd-builder
description: Synthesize all discovery artifacts into a detailed, complete Product Requirements Document with a full project overview and requirements organized by theme. Use when stories are stable and a complete project document is needed.
---

# PRD Builder

Produce a detailed, complete PRD from all discovery artifacts.

## Required Inputs

- `AGENTS.md`
- `PROJECT_CONTEXT.md`
- `INSIGHT_REGISTRY.md` with theme clusters
- `JOURNEY_MAP.md`
- Full story set
- `project_templates/PRD_TEMPLATE.md`

## Workflow

1. Draft executive summary: problem statement, who is affected, why it matters now.
2. Document user personas from PROJECT_CONTEXT.md and stakeholder inputs.
3. Summarize the discovery process: inputs used, sessions conducted, analyst notes.
4. Map pain points with evidence (link to insight registry entries).
5. Include journey map summary — highest-friction steps highlighted.
6. List all stories organized by theme, each linking to its ticket-ready detail.
7. Compile design references inventory.
8. Define success metrics: how will engineering and the team know the problem is solved.
9. State explicit scope boundaries: what is in scope and what is explicitly out.
10. List open questions that need answers before or during engineering.
11. Reference the roadmap for delivery sequencing.

## PRD Structure

```
# PRD: [Project Name]

## 1. Executive Summary
## 2. Problem Statement
## 3. User Personas
## 4. Discovery Summary (inputs, sessions, method)
## 5. Pain Points and Evidence (linked to insight registry)
## 6. User Journey Map Summary
## 7. Requirements (organized by theme, each linking to stories)
## 8. Design References
## 9. Success Metrics and Acceptance
## 10. Scope Boundaries
## 11. Open Questions
## 12. Roadmap Reference
```

## Quality Gates

- Every requirement traces to at least one insight and one story.
- Success metrics are measurable, not vague.
- Scope boundaries explicitly state what is excluded.
- Open questions are specific and actionable, not general.
- Document is navigable with headers and internal links.

## Required Output

- Complete `PRD.md` document following the structure above.
- Summary of open questions requiring analyst or engineering input before work begins.

## Constraints

- Do not invent requirements not supported by insights.
- Do not include implementation details.
- Keep the document navigable — headers and links, not walls of text.
- Do not duplicate story content — reference stories by ID, do not re-paste them.
