---
name: dedup-clusterer
description: Scan the Insight Registry to identify duplicate insights, merge them, and group remaining insights into themes with frequency and severity signals. Use after a batch of new insights has been added.
---

# Dedup Clusterer

Deduplicate and organize the Insight Registry into actionable theme clusters.

## Required Inputs

- `AGENTS.md`
- `PROJECT_CONTEXT.md`
- `INSIGHT_REGISTRY.md` (current state with new entries added)

## Workflow

1. Read the full Insight Registry.
2. Identify duplicate or near-duplicate insights (same pain point, different sources or wording).
3. Merge duplicates into a single consolidated entry — preserve all source references and evidence quotes from every original.
4. Group remaining insights into named themes (e.g., "Navigation Confusion", "Data Entry Friction").
5. Assign a frequency signal to each theme: how many users mentioned it, how many times total.
6. Assign a severity signal: critical (blocks task completion), major (causes significant friction), minor (preference or polish).
7. Update INSIGHT_REGISTRY.md with deduplicated entries and theme assignments.
8. Produce a Theme Cluster Map summarizing all themes.

## Theme Entry Format

```
## THEME-[ID]: [Theme Name]
- Frequency: [N users, M total mentions]
- Severity: [critical / major / minor]
- Insights: [INSIGHT-XX, INSIGHT-YY, ...]
- Summary: [one-sentence description of the theme]
```

## Quality Gates

- Every merged entry preserves all original source references and evidence quotes.
- Theme names are descriptive and generic enough to reuse across projects.
- Frequency and severity signals are grounded in evidence, not estimated.
- No insights are discarded during deduplication — minority insights are retained.

## Required Output

- Updated `INSIGHT_REGISTRY.md` with deduplicated entries and theme tags.
- Theme Cluster Map (appended to INSIGHT_REGISTRY.md or saved as a separate section).
- List of any insights that could not be confidently clustered, flagged for analyst review.

## Constraints

- Do not invent themes not supported by the evidence.
- Do not discard low-frequency insights — they may be high severity.
- Do not write stories or map journeys in this step.
