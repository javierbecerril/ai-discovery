---
name: intake-synthesizer
description: Extract structured insights from raw stakeholder inputs — transcripts, analyst notes, mockup descriptions, or survey data — and add them to the Insight Registry. Use when any new input arrives at any phase.
---

# Intake Synthesizer

Extract, structure, and register insights from raw input. Do not cluster, map, or write stories — only extract.

## Required Inputs

- `AGENTS.md`
- `PROJECT_CONTEXT.md`
- `INSIGHT_REGISTRY.md` (current state)
- Raw input: transcript text, analyst notes, mockup description, or survey data

## Workflow

1. Identify the input source type (transcript, analyst notes, mockup, survey).
2. Read the full input before extracting anything.
3. Extract pain points: specific friction, confusion, or failure moments.
4. Extract desired behaviors: what the user wants to be able to do instead.
5. Extract supporting evidence: direct quotes or observable moments that support the insight.
6. Capture analyst observations separately — analyst's own pattern recognition, between-the-lines interpretations, or solution ideas.
7. Tag each insight with: source (who), input type, session/date if known.
8. Check for obvious duplicates against existing INSIGHT_REGISTRY.md entries — flag but do not merge (dedup-clusterer handles that).
9. Add new entries to INSIGHT_REGISTRY.md in structured format.

## Insight Entry Format

```
## INSIGHT-[ID]
- Source: [user name or "analyst"]
- Input type: [transcript / analyst-notes / mockup / survey]
- Session: [date or session ID if known]
- Pain point: [specific friction or failure]
- Desired behavior: [what they want instead]
- Evidence: "[direct quote or observable moment]"
- Analyst note: [optional — analyst's interpretation or solution idea]
- Duplicate flag: [none / possible duplicate of INSIGHT-XX]
```

## Quality Gates

- Every insight traces back to a specific input source.
- Pain points and desired behaviors are stated separately.
- Evidence is a direct quote or observable moment, not a paraphrase.
- Analyst notes are clearly distinguished from user-stated needs.
- No merging or clustering — that belongs to dedup-clusterer.

## Required Output

- Updated `INSIGHT_REGISTRY.md` with new entries appended.
- Summary: count of new insights added, any flagged duplicates, any ambiguous items needing analyst review.

## Constraints

- Do not invent insights not present in the input.
- Do not merge insights — flag duplicates only.
- Do not write stories or map journeys in this step.
- If input is ambiguous, note the ambiguity and mark the insight as needing analyst review.
