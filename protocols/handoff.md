# Sub-Agent Handoff Protocol

**Purpose:** Ensure context transfers cleanly between Maker → Validator → Aligner transitions.

**When to Use:** Every role transition in the trio workflow.

---

## Required Handoff Package

Every handoff MUST include these 4 components:

### 1. Context Summary (max 10 bullets)

```markdown
## Handoff Summary — {from_role} → {to_role}

### What Was Attempted
- {high-level goal}

### What Was Completed
- {deliverable} at {path}
- {X}% of requirements met

### Known Limitations
- {limitation 1}
- {limitation 2}

### Blockers Encountered
- {blocker or "None"}

### Questions for Next Role
- {question or "None"}
```

### 2. Artifact Locations

```yaml
artifacts:
  primary_deliverable: "{relative_path}"
  evidence_folder: "{relative_path}/evidence/"
  requirements_reference: "REQUIREMENTS.md"
  previous_versions: "{path}/archive/"
```

### 3. State Flags

| Flag | Options | Description |
|------|---------|-------------|
| Completion | [COMPLETE] / [PARTIAL] / [BLOCKED] | Overall status |
| Quality Gate | [PASSED] / [CONDITIONAL] / [FAILED] | Self-assessment |
| Defects | {list} or "NONE" | Known issues |

### 4. Confidence Statement

**Maker → Validator:**
> "I'm {X}% confident this meets specification. Primary risk: {risk}."

**Validator → Aligner:**
> "I found {N} defects: {critical} critical, {major} major, {minor} minor. Overall: [PASS / FAIL / PARTIAL]."

**Aligner → Delivery:**
> "Requirements coverage: {X}%. Alignment confidence: {HIGH/MEDIUM/LOW}. Client need met: [YES / PARTIAL / NO]."

---

## Handoff Checklist

### Maker Completes → Hands to Validator

- [ ] Deliverable created and saved to known location
- [ ] Context summary written (max 10 bullets)
- [ ] Evidence folder populated with:
  - [ ] maker-notes.md
  - [ ] Any supporting files
- [ ] State flags set
- [ ] Confidence statement recorded
- [ ] Handoff trigger: "VALIDATOR: Verify {deliverable}"

### Validator Completes → Hands to Aligner (or back to Maker)

- [ ] Verification report complete
- [ ] Defects classified (Critical/Major/Minor)
- [ ] Evidence for each defect
- [ ] Recommendation: [PASS / FAIL / PARTIAL]
- [ ] If FAIL: Specific fixes required listed
- [ ] Handoff trigger: "MAKER: Fix {specific issues}" OR "ALIGNER: Validate for delivery"

### Aligner Completes → Delivery

- [ ] Requirements coverage assessed
- [ ] Acceptance criteria checked
- [ ] Client need validation complete
- [ ] Final recommendation: [DELIVER / REVISE / ABORT]
- [ ] Handoff trigger: "DELIVERY: Package and archive"

---

## Handoff Failures (What to Avoid)

### ❌ Bad Handoff Examples

**Vague:**
> "Here's the code. It should work."

**No location:**
> "I created the files." (where?)

**No context:**
> "Done." (what was done?)

**False confidence:**
> "It's perfect." (Validator decides this)

### ✅ Good Handoff Examples

**Maker → Validator:**
```
## Handoff Summary — Coder → Tester

### Completed
- CSV processor at src/csv_processor.py
- 100% of requirements met (REQUIREMENTS.md v2)

### Known Limitations
- Only handles UTF-8 encoding
- Max file size: 100MB (memory constraint)

### Blockers
- None

### Confidence
- I'm 85% confident this meets spec. Primary risk: edge cases with malformed CSV.

VALIDATOR: Verify src/csv_processor.py against REQUIREMENTS.md
```

**Validator → Maker (with defects):**
```
## Handoff Summary — Tester → Coder

### Verification Results
- Checks run: 12 | Passed: 10 | Failed: 2
- Coverage: 87%

### Defects Found
| Severity | Location | Issue | Fix Required |
|----------|----------|-------|--------------|
| Major | Line 45 | Empty lines cause crash | Add null check |
| Minor | Line 78 | Slow on files >50MB | Consider streaming |

### Recommendation
PARTIAL — Fix major defect before delivery.

MAKER: Fix empty line handling and resubmit.
```

---

## Platform Adaptation Note

On **Tier C (text-only)** platforms, handoffs include this warning:

> ⚠️ **Platform Limitation:** This verification is simulated. Actual file execution not available. User must manually verify before use.

---

## Summary

**Good handoffs = Good outcomes.**

- Be specific about locations
- Be honest about limitations
- Let the next role do their job
- Evidence over assertion
