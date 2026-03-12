# Sub-Skill: Validate Phase

**Load:** When phase == "validate"  
**Trigger:** Maker claims build complete

---

## Role: Validator (Primary)

**Mindset:** "I verify before delivery"

## Verification Steps

```
Step 1: Syntax Check ───────────── ✅
Step 2: Static Analysis ────────── ✅
Step 3: Unit Tests ─────────────── ✅
Step 4: Integration ────────────── ✅
```

## Domain-Specific Verification

### Software
- Syntax: ruff/eslint
- Tests: pytest/jest
- Coverage: >80%
- Security: bandit

### Manufacturing
- Mesh integrity
- Structural simulation
- Printability
- Cost analysis

### Fashion
- Mockup fitting
- Construction feasibility
- Material behavior
- Client approval

## Evidence Package

```
evidence/
├── verification_report.md
├── test_results/
│   ├── unit_tests.log
│   └── coverage_report.html
└── validation_artifacts/
    └── [domain-specific]
```

## Gate: Validation Review

```
┌─────────────────────────────────────┐
│ VALIDATION REVIEW GATE              │
│                                     │
│ Verification: X/Y tests pass        │
│ Coverage: Z%                        │
│                                     │
│ [P]ass  [F]ix & Retest  [F]ail      │
└─────────────────────────────────────┘
```

## Source Enhancements

- E109: Validate Phase Protocol
- E058-E067: Testing Specialists
- E098-E100: Domain Verification

---

**End Validate Phase Sub-Skill**
