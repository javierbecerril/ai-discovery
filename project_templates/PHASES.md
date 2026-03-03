# Product Development Phases — 4D Framework

Canonical reference for milestone planning across all discovery projects.
Skills that need phase context should list this file as a Required Input.

---

## Overview

Projects move through four phases. Each phase has defined outcomes that serve as
milestones. The right set of milestones depends on the project — not every phase
needs a formal checkpoint.

**Short-cadence projects:** Definition may not need its own milestone. Reach it
as quickly as possible without blocking on a formal gate.

**Where this workbench fits:** The AI Discovery Workbench covers **Discovery**
and **Definition**. Development and Delivery happen downstream in engineering
tooling, ticketing systems, and design tools.

---

## Phase 1: Discovery

Research phase. Gather all available information about the problem space.

**Outcomes:**
- Pain points, insights, and field annotations
- Pains / Gains / Pain Relievers / Gain Generators
- Jobs to Be Done
- User Stories (initial, pre-refinement)
- Observations
- Research nuggets
- Observation reports
- Field recordings / screenshots

**Workbench skills for this phase:**
`intake-synthesizer` → `dedup-clusterer` → `journey-mapper`

---

## Phase 2: Definition

Synthesis phase. Translate pain points, gains, needs, and wants into actionable tasks.

**Outcomes:**
- Finished project plan / PRD
- Download sessions
- PRD / Product Brief / Scope document

**Note:** On short-cadence projects, skip a formal Definition milestone — the goal
is to reach a usable PRD as fast as possible without treating it as a ceremony.

**Workbench skills for this phase:**
`story-writer` → `prd-builder` → `roadmap-prioritizer` → `eng-handoff-packager`

The engineering handoff marks the boundary between Definition and Development.

---

## Phase 3: Development

Execution phase. Ideas are transformed into deliverables.

**Outcomes:**
- UI/UX definitions
- Code produced
- Architecture set in place
- Metrics dashboards

**This phase happens outside this workbench.** Engineering owns this phase using
their own tooling (ticketing system, design tools, code repositories).

The ROADMAP.md produced by `roadmap-prioritizer` sequences work within this phase.

---

## Phase 4: Delivery

Rollout phase. Getting the product or solution into the hands of end users.
Requires a specific rollout plan.

**Outcomes:**
- User events and metrics
- Data for follow-ups

**This phase happens outside this workbench.** The rollout plan and metrics
dashboards are owned by the product and engineering teams post-handoff.

---

## Milestone Table (for use in PRD Timeline)

Use this as the default structure in the PRD Timeline section.
Phases with no applicable work can be marked N/A or collapsed.

| Phase | Status | Start Date | Target Date | Key Outcome |
|-------|--------|------------|-------------|-------------|
| Discovery | | | | Insight registry + journey map |
| Definition | | | | PRD + stories + roadmap |
| Development | | | | Deliverables (UI, code, architecture) |
| Delivery | | | | Rollout + metrics baseline |

---

## Rollout Plan Template (for Delivery phase)

| Milestone | Description | Target Date | % Rollout |
|-----------|-------------|-------------|-----------|
| Internal release | | | |
| Limited rollout | | | % of users |
| Full rollout | | | 100% |
| Follow-up review | | | |
