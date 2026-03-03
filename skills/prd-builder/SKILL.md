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
- `project_templates/PHASES.md`

## Workflow

1. Draft executive summary: problem statement, who is affected, why it matters now.
2. State reasons for the project: the opportunity, pain points, or client need that triggered it.
3. Define objectives: what results must be achieved. Link to OKR if available. For small changes or early-stage projects, mark as "N/A" or "TBD" with a brief note.
4. Define metrics: measurable signals for success (time saved, conversion rate, bug reduction). Must be specific, not vague.
5. List outcomes: material deliverables that will exist when the project is complete (new UI, report, API endpoint).
6. Document user personas from PROJECT_CONTEXT.md and stakeholder inputs.
7. Summarize the discovery process: inputs used, sessions conducted, analyst notes.
8. Map pain points with evidence (link to insight registry entries).
9. Include journey map summary — highest-friction steps highlighted.
10. List all requirements organized by theme, each linking to its ticket-ready story.
11. Compile design details: wireframes, annotations, architecture maps, database design docs.
12. Document technical details: tech stack, documentation links, DB architecture, repo structure. Mark "TBD" if not yet defined.
13. Fill in the timeline using the 4D phase structure from `project_templates/PHASES.md`: pre-populate Discovery, Definition, Development, and Delivery rows. Fill in dates and outcomes where known; mark unknown fields as TBD. Include the rollout plan table for the Delivery phase.
14. State explicit scope boundaries: what is in scope and what is explicitly out.
15. List open questions that need answers before or during engineering.
16. Reference the roadmap for delivery sequencing.

## PRD Structure

```
# PRD: [Project Name]

## 1. Executive Summary
## 2. Reasons for the Project (Why)
## 3. Objectives (OKR-linked; "N/A" or "TBD" acceptable for small changes)
## 4. Metrics (measurable definition of success)
## 5. Outcomes (material deliverables)
## 6. User Personas
## 7. Discovery Summary (inputs, sessions, method)
## 8. Pain Points and Evidence (linked to insight registry)
## 9. User Journey Map Summary
## 10. Requirements (organized by theme, each linking to stories)
## 11. Design Details (wireframes, annotations, architecture maps)
## 12. Technical Details (tech stack, docs, DB architecture, repo structure)
## 13. Timeline (start date, target date, milestones, rollout)
## 14. Scope Boundaries
## 15. Open Questions
## 16. Roadmap Reference
```

## Handling Incomplete Sections

Some sections may be legitimately minimal or unknown at PRD time:

- **Objectives / OKR**: If this is a small UI change or the OKR is still being defined, write a brief note explaining why rather than leaving it blank.
- **Technical Details**: If not yet defined, mark fields as "TBD" — do not omit the section.
- **Timeline**: If dates are not confirmed, provide estimates and flag them as provisional.
- Never leave a section empty without explanation.

## Quality Gates

- Every requirement traces to at least one insight and one story.
- Metrics are measurable, not vague.
- Outcomes are concrete deliverables, not goals.
- Objectives note OKR link or explain why one is absent.
- Scope boundaries explicitly state what is excluded.
- Open questions are specific and actionable, not general.
- Document is navigable with headers and internal links.

## Required Output

- Complete `PRD.md` document following the structure above.
- Summary of open questions requiring analyst or engineering input before work begins.

## Constraints

- Do not invent requirements not supported by insights.
- Do not include implementation details in Requirements — those belong in Technical Details.
- Keep the document navigable — headers and links, not walls of text.
- Do not duplicate story content — reference stories by ID, do not re-paste them.
