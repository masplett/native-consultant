# Enhancement #167: Stage Gate Verification Protocol

**Status:** IN_PROGRESS — Phase 1 Implementation  
**Type:** Process/Quality Assurance  
**Source:** Gap Analysis (E164) — E163 Pattern Prevention  
**Depends On:** E001, E003, E014, E082, E088, E159, E163  
**Related To:** All phase transitions (Discovery→Design, Design→Build, Build→Validate, Validate→Deliver)

---

## Problem Statement

### The E163 Pattern

**Observed Pattern:**
1. Enhancement is proposed and documented ✓
2. Enhancement marked "IMPLEMENTED" ✓
3. Enhancement has no runtime enforcement ✗
4. Enhancement ignored in practice ✗
5. Gap discovered only after failure ✗

**Root Cause:** No mechanism exists to verify that documented procedures were actually followed before proceeding to the next phase.

**Evidence:**
- 82% of "IMPLEMENTED" enhancements (14 of 17 reviewed) are documentation-only
- 5 critical enhancements (E001, E003, E014, E082, E088) claim enforcement but have no mechanism
- CR-as-memory (E163) was "IMPLEMENTED" for months before discovery of no runtime logic

### Impact

| Risk | Example | Cost |
|------|---------|------|
| Untested code delivered | E014 ignored → "should work" instead of verification | Rework, bugs |
| Broken code validated | E001 ignored → syntax errors in deep analysis | Wasted compute |
| Destructive ops unconfirmed | E082 ignored → file deletion without confirmation | Data loss |
| Quality gates bypassed | E088 ignored → verification skipped under pressure | Quality degradation |
| No audit trail | E163 ignored → no conversation memory | Lost context |

---

## Solution: Stage Gate Verification Protocol

### Core Principle

> **No phase transition without evidence that required procedures were executed.**

### The Protocol

Insert a **mandatory verification gate** between each phase that checks for evidence of required procedures.

```
Discovery ──[GATE: D→D]──> Design ──[GATE: D→B]──> Build ──[GATE: B→V]──> Validate ──[GATE: V→De]──> Deliver
             (Verify)              (Verify)              (Verify)                (Verify)
```

---

## Phase Transition Gates

### GATE D→D: Discovery → Design Review

**Trigger:** Aligner completes Discovery, presents Design Review

**Verification Checklist:**

| Enhancement | Required Evidence | Check Method | Failure Action |
|-------------|-------------------|--------------|----------------|
| E006 (Single Question Rule) | REQUIREMENTS.md shows sequential Q&A format | File content regex | Return to Discovery |
| E159 (CR Lifecycle) | CR created for this engagement | File exists | Create CR retroactively |
| E163 (CR-as-Memory) | All prompts logged in CR | CR has N turns | Prompt user to continue |
| E077 (Decision Log) | Decision log started if choices made | File exists or N/A | Create decision log |

**Gate Output:**
```
┌─────────────────────────────────────────┐
│ GATE D→D: Discovery → Design Review     │
│                                         │
│ Requirements gathered: ✅               │
│ CR created: ✅                          │
│ Prompts logged: ✅ (12 turns)           │
│ Decision log: ✅ (3 decisions)          │
│                                         │
│ STATUS: [PASS] → Proceed to Design      │
│         [FAIL] → Return to Discovery    │
└─────────────────────────────────────────┘
```

---

### GATE D→B: Design Review → Build

**Trigger:** User approves design ([A]pprove at Design Review gate)

**Verification Checklist:**

| Enhancement | Required Evidence | Check Method | Failure Action |
|-------------|-------------------|--------------|----------------|
| E004 (Decision Log) | DESIGN.md references decisions | File content | Require decision documentation |
| E078 (Constraint Documentation) | Constraints documented | File content | Document constraints |
| E079 (Assumption Tracking) | Assumptions listed | File content | List assumptions |
| E082 (Tool Call Guards) | Destructive ops identified | Risk assessment | Add guard confirmations |

**Gate Output:**
```
┌─────────────────────────────────────────┐
│ GATE D→B: Design → Build                │
│                                         │
│ Design approved: ✅ ([A] selected)      │
│ Constraints documented: ✅ (5 listed)   │
│ Assumptions tracked: ✅ (3 listed)      │
│ Risk assessment: ✅ (2 destructive ops) │
│                                         │
│ STATUS: [PASS] → Proceed to Build       │
│         [FAIL] → Hold for documentation │
└─────────────────────────────────────────┘
```

---

### GATE B→V: Build → Validation Review

**Trigger:** Maker claims build complete

**Verification Checklist:**

| Enhancement | Required Evidence | Check Method | Failure Action |
|-------------|-------------------|--------------|----------------|
| E001 (Syntax-First) | Syntax check passed | Parse attempt | Stop, return to Maker |
| E007 (Evidence-First) | No "should work" claims | Content scan | Require evidence |
| E014 (Feedback Loop) | Tests/verification run | Evidence folder exists | Run verification |
| E021 (Evidence Package) | Evidence package created | JSON manifest | Create evidence package |
| E088 (Never Skip Verification) | Verification not skipped | No skip flags | Block if skip detected |

**Gate Output:**
```
┌─────────────────────────────────────────┐
│ GATE B→V: Build → Validation            │
│                                         │
│ Syntax check: ✅ PASS                   │
│ Evidence-First: ✅ (0 "should work")    │
│ Feedback loop: ✅ (tests run)           │
│ Evidence package: ✅ (12 artifacts)     │
│ Verification: ✅ COMPLETED (not skipped)│
│                                         │
│ STATUS: [PASS] → Proceed to Validation  │
│         [FAIL] → Return to Maker        │
└─────────────────────────────────────────┘
```

---

### GATE V→De: Validation → Delivery

**Trigger:** Validation gate passed ([P]ass selected)

**Verification Checklist:**

| Enhancement | Required Evidence | Check Method | Failure Action |
|-------------|-------------------|--------------|----------------|
| E003 (Pre-Commit Checklist) | Pre-delivery checks completed | Checklist file | Run checks |
| E080 (Evidence Retention) | Evidence retained per policy | Archive exists | Archive evidence |
| E088 (Never Skip Verification) | All criteria verified | Checklist complete | Complete verification |
| E160 (Resolution Section) | Resolution documented | CR has resolution | Add resolution |
| E163 (CR-as-Memory) | Full conversation logged | CR complete | Complete CR |

**Gate Output:**
```
┌─────────────────────────────────────────┐
│ GATE V→De: Validation → Delivery        │
│                                         │
│ Validation: ✅ PASS ([P] selected)      │
│ Pre-delivery checks: ✅ (7/7)           │
│ Evidence archived: ✅                   │
│ Resolution documented: ✅               │
│ CR complete: ✅ (45 turns logged)       │
│                                         │
│ STATUS: [PASS] → Proceed to Delivery    │
│         [FAIL] → Hold for completion    │
└─────────────────────────────────────────┘
```

---

## Implementation Mechanism

### The Phase Transition Enforcer

**Location:** `sub-skills/phase-transition-protocol.md` (NEW)

**Behavior:**

```python
def transition_phase(current_phase, next_phase, context):
    """
    Enforces stage gate verification before any phase transition.
    """
    
    # 1. Determine which gate to apply
    gate_id = f"{current_phase[0]}→{next_phase[0]}"
    
    # 2. Load gate requirements
    requirements = load_gate_requirements(gate_id)
    
    # 3. Verify each requirement
    results = []
    for req in requirements:
        evidence = check_evidence(req, context)
        results.append({
            "enhancement": req.enhancement_id,
            "requirement": req.description,
            "evidence_found": evidence.exists,
            "evidence_location": evidence.path,
            "status": "PASS" if evidence.exists else "FAIL"
        })
    
    # 4. Calculate overall status
    passed = sum(1 for r in results if r["status"] == "PASS")
    total = len(results)
    
    # 5. Generate gate report
    report = generate_gate_report(gate_id, results, passed, total)
    
    # 6. Decision
    if passed == total:
        return {
            "status": "PASS",
            "action": f"Proceed to {next_phase}",
            "report": report
        }
    else:
        return {
            "status": "FAIL",
            "action": f"Return to {current_phase} or Hold",
            "failures": [r for r in results if r["status"] == "FAIL"],
            "report": report
        }
```

### Gate Requirements Registry

**File:** `config/gate-requirements.yaml`

```yaml
gates:
  D→D:  # Discovery to Design
    description: "Discovery completion verification"
    requirements:
      - id: E006
        check: "file_exists(REQUIREMENTS.md)"
        evidence: "Sequential Q&A format"
      - id: E159
        check: "file_exists(enhancements/change/CR###.md)"
        evidence: "CR created for engagement"
      - id: E163
        check: "cr_turn_count >= 1"
        evidence: "Initial prompt logged"
    
  D→B:  # Design to Build
    description: "Design approval verification"
    requirements:
      - id: E004
        check: "file_exists(DESIGN.md)"
        evidence: "Design documented"
      - id: E078
        check: "content_exists(DESIGN.md, '## Constraints')"
        evidence: "Constraints section present"
    
  B→V:  # Build to Validation
    description: "Build completion verification"
    requirements:
      - id: E001
        check: "syntax_check_passed(deliverables)"
        evidence: "No parse errors"
      - id: E014
        check: "directory_exists(evidence/)"
        evidence: "Tests/verification artifacts"
      - id: E088
        check: "verification_not_skipped"
        evidence: "All criteria checked"
    
  V→De:  # Validation to Delivery
    description: "Delivery readiness verification"
    requirements:
      - id: E003
        check: "checklist_completed(pre_delivery)"
        evidence: "7/7 checks passed"
      - id: E080
        check: "directory_exists(archive/)"
        evidence: "Evidence archived"
```

---

## Enforcement Levels

### Level 1: Advisory (Default for new protocols)
- Gate runs, reports findings
- Warnings shown for missing evidence
- User can override with explicit "[P]roceed despite warnings"
- **Use for:** Newly introduced requirements

### Level 2: Blocking (Critical protocols)
- Gate runs, reports findings
- FAIL status blocks transition
- User must complete requirements or request override
- Override logged with justification
- **Use for:** E001, E082, E088 (safety-critical)

### Level 3: Non-Bypassable (Compliance requirements)
- Gate runs, reports findings
- FAIL status blocks transition
- No override permitted
- Must complete all requirements
- **Use for:** None initially (reserve for regulated industries)

---

## Failure Handling

### Automatic Remediation

For certain failures, auto-remediation is attempted:

| Failure | Auto-Remediation | Success Criteria |
|---------|------------------|------------------|
| CR not created | Create CR with current context | CR file exists |
| Evidence folder missing | Create `evidence/` directory | Directory exists |
| Decision log missing | Create from conversation | File exists |
| Syntax not checked | Run syntax check | Parse success |

### Manual Remediation

For failures that cannot be auto-remediated:

```
GATE B→V: FAILED

Missing Requirements:
1. E014 (Feedback Loop): No test evidence found
   Location: evidence/ directory empty
   
   OPTIONS:
   [R]un verification now
   [M]anually add evidence
   [A]bort and return to Build
```

---

## Integration with Existing Workflow

### Terminal Format

Gates appear in the standard terminal format:

```
STATUS    Gate B→V — Checks: 4/4 PASS
ACTIVE    Validator — Verifying build completion
VERIFY    Syntax-First, Evidence-First, Feedback Loop, Evidence Package
ALIGN     All requirements met

Gate passed. Proceeding to Validation Review.
OPTIONS   proceed | review evidence | pause
```

### Gate Failure Display

```
STATUS    Gate B→V — Checks: 2/4 PASS
ACTIVE    Validator — Build completion verification FAILED
VERIFY    Syntax-First: ✅ | Evidence-First: ✅ | Feedback Loop: ❌ | Evidence Package: ❌
ALIGN     Requirements incomplete — cannot proceed

Missing Evidence:
- E014: No verification artifacts in evidence/
- E021: No evidence-package.json manifest

OPTIONS   run verification | manual remediation | return to build | pause
```

---

## Benefits

### Prevents E163 Pattern
- Documents are not enough — gates require evidence
- Missing procedures caught at transition, not after delivery
- Forces compliance or explicit override (audit trail)

### Quality Assurance
- No phase proceeds without verification
- Broken code cannot reach validation
- Untested code cannot reach delivery

### Audit Trail
- Every gate decision logged
- Overrides require justification
- Full traceability of what was checked

### Continuous Improvement
- Gate failure data shows which procedures are ignored
- Metrics on pass/fail rates per gate
- Identification of overly burdensome requirements

---

## Known Reasons for Non-Compliance

### Why procedures might be skipped (before this protocol):

| Reason | Frequency | Mitigation with Stage Gates |
|--------|-----------|----------------------------|
| **Time pressure** | High | Gates make skipping explicit, not accidental |
| **Forgotten** | High | Gates check automatically, don't rely on memory |
| **Don't understand requirement** | Medium | Gate explains what's needed and why |
| **Believe it's unnecessary** | Medium | Override requires explicit justification |
| **Technical limitation** | Low | Auto-remediation handles many cases |
| **Context limit reached** | Low | Gates run before context expires |

### Legitimate Override Scenarios

| Scenario | Override Justification | Approval |
|----------|----------------------|----------|
| Emergency fix | "Production down, hotfix required" | User + timestamp |
| Known limitation | "Tool unavailable, manual verification done" | User + evidence |
| Prototype/Demo | "Not for production, demonstration only" | User + flag |
| User explicit request | "User said skip verification" | User confirmation |

---

## Implementation Plan

### Phase 1: Foundation (Week 1)
- [ ] Create `sub-skills/phase-transition-protocol.md`
- [ ] Create `config/gate-requirements.yaml`
- [ ] Implement gate execution framework
- [ ] Add gate to Discovery→Design transition

### Phase 2: Core Gates (Week 2-3)
- [ ] Add gate to Design→Build transition
- [ ] Add gate to Build→Validation transition
- [ ] Add gate to Validation→Delivery transition
- [ ] Implement auto-remediation for common failures

### Phase 3: Critical Enhancements (Week 4)
- [ ] Integrate E001 (Syntax-First) into B→V gate
- [ ] Integrate E014 (Feedback Loop) into B→V gate
- [ ] Integrate E082 (Tool Call Guards) into D→B gate
- [ ] Integrate E163 (CR-as-Memory) into all gates

### Phase 4: Hardening (Week 5-6)
- [ ] Set E001, E082, E088 to Level 2 (Blocking)
- [ ] Implement override logging
- [ ] Add gate metrics collection
- [ ] Document override procedures

### Phase 5: Validation (Week 7)
- [ ] Test with 5 sample projects
- [ ] Measure gate pass/fail rates
- [ ] Adjust requirement strictness
- [ ] Final QA

---

## Success Criteria

- [ ] All phase transitions include mandatory gate
- [ ] 100% of transitions logged with gate results
- [ ] E001, E014, E082, E088 violations caught at gate
- [ ] No "should work" claims pass B→V gate
- [ ] No syntax errors pass B→V gate
- [ ] 100% of engagements have complete CR (E163)
- [ ] Gate pass/fail metrics available

---

## Metadata

**Dependencies:**
- E001 (Syntax-First Validation)
- E003 (Pre-Commit Checklist)
- E014 (Feedback Loop Protocol)
- E082 (Tool Call Guards)
- E088 (Never Skip Verification)
- E159 (Change Request Lifecycle)
- E163 (CR as Conversation Memory)

**Used In Phases:** All phase transitions
**Used In Domains:** All domains
**Used In Complexity:** All complexity levels

**Sub-Skills:** phase-transition-protocol (NEW)

---

## Resolution

**Status:** PROPOSED

### Next Steps
1. Review proposal with stakeholders
2. Approve implementation plan
3. Create Phase 1 tasks
4. Begin implementation

---

*End Enhancement #167*
