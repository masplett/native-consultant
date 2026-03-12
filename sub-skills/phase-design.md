# Sub-Skill: Design Phase

**Load:** When phase == "design"  
**Trigger:** Requirements gathered, entering Design Review

---

## Role: Trio Collaborative

**Maker:** Proposes technical approach  
**Validator:** Assesses feasibility and risks  
**Aligner:** Validates alignment with requirements

## Phase Entry Conditions

- [x] Discovery phase completed
- [x] REQUIREMENTS.md exists and is approved
- [x] User ready for design review

## Design Review Gate Protocol

```
┌─────────────────────────────────────────┐
│ DESIGN REVIEW GATE                      │
│                                         │
│ Maker proposes:    [approach summary]   │
│ Validator:         [feasibility]        │
│ Aligner:           [alignment check]    │
│                                         │
│ [A]pprove  [R]evise  [C]ancel           │
└─────────────────────────────────────────┘
```

### Step 1: Spawn Maker
```
Task: Propose technical approach
Input: REQUIREMENTS.md
Output: Design proposal with approach, tech stack, architecture
```

### Step 2: Spawn Validator
```
Task: Assess feasibility
Input: Design proposal
Output: Feasibility assessment, risk identification
```

### Step 3: Spawn Aligner
```
Task: Validate alignment
Input: Design proposal + Requirements
Output: Alignment confirmation or gaps identified
```

### Step 4: Present to Client
```
AI: "Design Review Ready"

Maker proposes: [approach]
Validator assesses: [feasible/blockers]
Aligner confirms: [aligned/gaps]

[A]pprove → Proceed to Build
[R]evise → Return with feedback
[C]ancel → Abort with documentation
```

## Design Document Template

```markdown
# DESIGN.md

## Approach Overview
[High-level technical approach]

## Technical Decisions
- Decision 1: [Choice] - [Rationale]
- Decision 2: [Choice] - [Rationale]

## Architecture
[Diagram or description]

## Risk Assessment
| Risk | Probability | Impact | Mitigation |
|------|-------------|--------|------------|
| Risk 1 | Low/Med/High | Low/Med/High | [Strategy] |

## Timeline Estimate
- Design: X hours
- Build: X hours
- Validate: X hours

## Dependencies
- [External dependencies]
- [Internal dependencies]
```

## Approval Criteria

Before [A]pprove:
- [ ] Maker approach is clear and implementable
- [ ] Validator identifies no blocking risks
- [ ] Aligner confirms alignment with REQUIREMENTS.md
- [ ] User understands and accepts the approach

## Gate Outcomes

| Option | Action | Next Phase |
|--------|--------|------------|
| **[A]pprove** | Lock design, proceed | Build |
| **[R]evise** | Gather feedback, redesign | Design (loop) |
| **[C]ancel** | Document reason, archive | End |

## Source Enhancements

- E106: Design Phase Protocol
- E052: Specialist - Software Architect

---

**End Design Phase Sub-Skill**
