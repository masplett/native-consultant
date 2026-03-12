# Sub-Skill: Phase Transition Gate Protocol

**Version:** 1.0  
**Load:** On phase transition  
**Trigger:** Any attempt to move between phases (Discovery→Design→Build→Validate→Deliver)  
**Size:** ~8KB

---

## Purpose

Prevent the **E163 Pattern** (documented but not enforced) by requiring evidence that procedures were executed before allowing phase transitions.

> **No phase transition without verification that required procedures were executed.**

---

## The Four Gates

```
Discovery ──[GATE D→D]──> Design Review ──[GATE D→B]──> Build ──[GATE B→V]──> Validation ──[GATE V→De]──> Delivery
             Verify DR ready                  Verify build                Verify validation           Verify delivery
             requirements                     requirements                requirements                requirements
```

---

## Gate Execution Flow

```
User/AI attempts phase transition
    ↓
[BLOCK] Transition paused
    ↓
Load gate requirements for this transition
    ↓
Check each requirement for evidence
    ↓
All requirements met? ──YES──> [ALLOW] Transition proceeds
    ↓ NO
[FAIL] Block transition, show missing requirements
    ↓
OPTIONS: Remediate | Override with justification | Abort
```

---

## Gate D→D: Discovery → Design Review

**When:** Aligner completes Discovery, about to present Design Review gate

**Requirements:**

| Check | Evidence Required | Auto-Remediation |
|-------|-------------------|------------------|
| REQUIREMENTS.md exists | File present | ❌ No |
| CR created for engagement | `enhancements/change/CR###.md` exists | ✅ Create retroactively |
| Prompts logged in CR | CR has ≥1 turn | ❌ No |
| Decision log started (if choices) | Decision section in CR or file | ✅ Create in CR |

**Pass Criteria:** All checks PASS

**Output:**
```
┌─────────────────────────────────────────┐
│ GATE D→D: Discovery → Design Review     │
│                                         │
│ REQUIREMENTS.md: ✅                     │
│ CR created: ✅ (CR165)                  │
│ Prompts logged: ✅ (8 turns)            │
│ Decision log: ✅ (2 decisions)          │
│                                         │
│ STATUS: ✅ PASS                         │
│ Proceeding to Design Review...          │
└─────────────────────────────────────────┘
```

---

## Gate D→B: Design Review → Build

**When:** User approves design ([A]pprove selected at Design Review gate)

**Requirements:**

| Check | Evidence Required | Auto-Remediation |
|-------|-------------------|------------------|
| DESIGN.md exists | File present | ❌ No |
| Constraints documented | "## Constraints" section in DESIGN.md | ❌ No |
| Assumptions tracked | "## Assumptions" section in DESIGN.md | ❌ No |
| Risk assessment (destructive ops) | Risk section OR no destructive ops detected | ✅ Note "No risks detected" |

**Pass Criteria:** All checks PASS

**Output:**
```
┌─────────────────────────────────────────┐
│ GATE D→B: Design → Build                │
│                                         │
│ DESIGN.md: ✅                           │
│ Constraints: ✅ (5 listed)              │
│ Assumptions: ✅ (3 listed)              │
│ Risk assessment: ✅ (2 destructive ops) │
│                                         │
│ STATUS: ✅ PASS                         │
│ Proceeding to Build...                  │
└─────────────────────────────────────────┘
```

---

## Gate B→V: Build → Validation Review

**When:** Maker claims build complete

**Requirements:**

| Check | Evidence Required | Auto-Remediation |
|-------|-------------------|------------------|
| Syntax check passed | Parsed successfully | ✅ Run syntax check |
| No "should work" claims | Content scan: 0 instances | ❌ No |
| Verification/tests run | `evidence/` directory not empty | ✅ Prompt to run |
| Evidence package created | `evidence/evidence-package.json` OR files exist | ❌ No |

**Pass Criteria:** All checks PASS

**Output:**
```
┌─────────────────────────────────────────┐
│ GATE B→V: Build → Validation            │
│                                         │
│ Syntax check: ✅ PASS                   │
│ Evidence-First: ✅ (0 "should work")    │
│ Verification: ✅ (tests run)            │
│ Evidence package: ✅ (8 artifacts)      │
│                                         │
│ STATUS: ✅ PASS                         │
│ Proceeding to Validation Review...      │
└─────────────────────────────────────────┘
```

**Failure Output:**
```
┌─────────────────────────────────────────┐
│ GATE B→V: Build → Validation            │
│                                         │
│ Syntax check: ✅ PASS                   │
│ Evidence-First: ❌ (1 "should work" found)│
│ Verification: ❌ (no evidence/)         │
│ Evidence package: ❌                    │
│                                         │
│ STATUS: ❌ FAIL                         │
│                                         │
│ Missing:                                │
│ • E014: Run verification/tests          │
│ • E007: Replace "should work" with evidence│
│                                         │
│ OPTIONS:                                │
│ [R]un verification now                  │
│ [F]ix evidence-first language           │
│ [O]verride with justification           │
│ [A]bort, return to Build                │
└─────────────────────────────────────────┘
```

---

## Gate V→De: Validation → Delivery

**When:** Validation gate passed ([P]ass selected)

**Requirements:**

| Check | Evidence Required | Auto-Remediation |
|-------|-------------------|------------------|
| Pre-delivery checks completed | Checklist in CR or evidence folder | ❌ No |
| Evidence archived | `archive/` or `evidence/` retained | ✅ Create archive/ |
| Resolution documented | "## Resolution" in CR | ❌ No |
| CR complete (full conversation) | CR has all turns | ✅ Note completion |

**Pass Criteria:** All checks PASS

**Output:**
```
┌─────────────────────────────────────────┐
│ GATE V→De: Validation → Delivery        │
│                                         │
│ Pre-delivery: ✅ (7/7 checks)           │
│ Evidence archived: ✅                   │
│ Resolution: ✅ documented               │
│ CR complete: ✅ (42 turns)              │
│                                         │
│ STATUS: ✅ PASS                         │
│ Proceeding to Delivery...               │
└─────────────────────────────────────────┘
```

---

## Enforcement Levels

### Level 1: Advisory (Default)
```
GATE: WARNING — 1/4 checks failed
Missing: E014 (Feedback Loop)

OPTIONS: [P]roceed anyway | [F]ix issues | [H]old
```

### Level 2: Blocking (E001, E014, E082, E088)
```
GATE: BLOCKED — Critical requirement failed
Missing: E001 (Syntax-First)

Syntax errors detected. Cannot proceed to validation.

OPTIONS: [F]ix errors | [A]bort to Build
```

### Level 3: Non-Bypassable (Not yet used)
Reserved for regulated industries. No override permitted.

---

## Override Procedure

When user selects [O]verride:

```
OVERRIDE REQUESTED

Requirement: E014 (Feedback Loop)
Reason for override: _______________

Justification types:
• "Emergency fix required" 
• "Manual verification completed"
• "Prototype only, not production"
• Other: _______________

[Confirm override] [Cancel]

⚠️ Override will be logged in CR
```

---

## Configuration

**Gate requirements defined in:** `config/gate-requirements.yaml`

**Per-gate settings:**
```yaml
gate_B_V:  # Build to Validation
  enforcement_level: 2  # Blocking
  auto_remediate: true
  required_checks:
    - E001
    - E014
    - E021
```

---

## Integration

### In Terminal Format

Gates appear as standard status:

```
STATUS    Gate B→V — Checks: 3/4 PASS
ACTIVE    Validator — Verifying build completion
VERIFY    E001:✅ E014:❌ E021:✅ E088:✅
ALIGN     Requirements incomplete — blocking transition

GATE FAILED: E014 (Feedback Loop) — No verification evidence

OPTIONS   run verification | fix issues | override | abort
```

### In Six-Phase Workflow

```
3. BUILD (Maker + Validator)
   ↓ [Maker claims complete]
   
   [GATE B→V EXECUTES]
   
   IF PASS → Proceed to 4. VALIDATION
   IF FAIL → Return to 3. BUILD
```

---

## Success Metrics

Track in each CR:
```yaml
gate_metrics:
  gate_D_D:
    total_executions: N
    pass_count: N
    fail_count: N
    override_count: N
  gate_B_V:
    total_executions: N
    e001_failures: N
    e014_failures: N
```

---

## Implementation Status

| Component | Status | File |
|-----------|--------|------|
| Gate framework | ✅ Complete | This file |
| D→D gate | ✅ Complete | Defined above |
| D→B gate | ✅ Complete | Defined above |
| B→V gate | ✅ Complete | Defined above |
| V→De gate | ✅ Complete | Defined above |
| Requirements YAML | 🔄 Phase 1 | `config/gate-requirements.yaml` |
| Auto-remediation | 🔄 Phase 2 | Logic in framework |
| Override logging | 🔄 Phase 2 | CR append |
| Metrics collection | 🔄 Phase 3 | CR metadata |

---

## Source Enhancements

- E001: Syntax-First Validation (Level 2 enforcement)
- E003: Pre-Commit Checklist (V→De gate)
- E014: Feedback Loop Protocol (Level 2 enforcement)
- E082: Tool Call Guards (D→B gate)
- E088: Never Skip Verification (Level 2 enforcement)
- E159: Change Request Lifecycle (D→D gate)
- E163: CR as Conversation Memory (All gates)
- **E167: Stage Gate Verification Protocol (This implementation)**

---

**End Phase Transition Gate Protocol**
