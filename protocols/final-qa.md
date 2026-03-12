# Final QA Protocol

**Purpose:** Catch errors before delivery. Every deliverable needs one last look.

**When to Use:** After build is "complete" but before delivery to client.

**Who Does It:** Can be Aligner, Validator, or dedicated QA role. Must be someone who didn't create the deliverable.

---

## The Rule of Three Looks

Before delivery, the work gets three reviews:
1. **Maker** — "I built it right" (technical correctness)
2. **Validator** — "It works" (verification passed)
3. **Final QA** — "It's ready to ship" (completeness & polish)

---

## Final QA Checklist

### Files & Structure
- [ ] All promised files exist
- [ ] Files are in correct locations (deliverables/, evidence/)
- [ ] No stray temporary files
- [ ] File names are clear and consistent

### Documentation
- [ ] REQUIREMENTS.md exists and is accurate
- [ ] README or usage instructions included (if applicable)
- [ ] No placeholder text: `{template_variables}`, `TODO`, `FIXME`
- [ ] No "this should work" — actual verification evidence present

### Evidence Package
- [ ] Verification report exists
- [ ] Test results or equivalent evidence included
- [ ] Defects found (if any) documented with resolutions
- [ ] Confidence level stated explicitly

### Safety & Boundaries
- [ ] No unauthorized file deletions
- [ ] No external system modifications without approval
- [ ] Working directory respected
- [ ] No secrets/credentials in deliverables

### Platform Adaptation (Tier C Check)
- [ ] If Tier C (text-only): Warning label present
- [ ] Test cases provided for user verification
- [ ] "SIMULATED" clearly marked where applicable

### Git Readiness
- [ ] Commit message drafted with team attribution
- [ ] Evidence folder ready for archive
- [ ] Clean working state (no uncommitted changes)

### Customer Perspective
- [ ] Can a new person understand what's in the package?
- [ ] Can they use the deliverable with the provided docs?
- [ ] Would I be comfortable putting my name on this?

---

## QA Decision

```
┌─────────────────────────────────────────┐
│ FINAL QA DECISION                       │
│                                         │
│ Reviewed: {deliverable}                 │
│ By: {qa_role}                           │
│                                         │
│ Checks: {N}/{total} passed              │
│                                         │
│ DECISION:                               │
│ [  ] PASS — Ready for delivery          │
│ [  ] FIX — Issues found, see below      │
│ [  ] HOLD — Blocked, need clarification │
│                                         │
│ Issues (if any):                        │
│ - {issue 1}                             │
│ - {issue 2}                             │
└─────────────────────────────────────────┘
```

---

## Common Final QA Failures

### "I Forgot to Update the Template"
**Symptom:** File contains `{domain.maker.name}` or similar placeholders.
**Fix:** Replace with actual values.

### "The Evidence is Missing"
**Symptom:** "It works" claim with no test output.
**Fix:** Run verification, capture evidence.

### "Wrong File Location"
**Symptom:** Deliverable in root, should be in deliverables/.
**Fix:** Move to correct location, update documentation.

### "I Was Going to Fix That"
**Symptom:** Known defects not documented.
**Fix:** Document as known issues or fix before delivery.

### "It Works on My Machine"
**Symptom:** Platform-specific code without documentation.
**Fix:** Add platform requirements to documentation.

---

## Final QA Output

If PASS:
```
## Final QA Report — PASS

Deliverable: {name}
Date: {timestamp}
QA By: {role}

All checks passed. Ready for delivery.
```

If FIX:
```
## Final QA Report — FIX REQUIRED

Deliverable: {name}
Issues Found: {N}

| Issue | Location | Fix Required |
|-------|----------|--------------|
| {desc}| {where}  | {action}     |

Return to: {Maker/Validator/Aligner}
```

---

## Summary

**Final QA is the safety net.** It's the last chance to catch:
- Embarrassing oversights
- Missing pieces
- Documentation gaps
- Safety violations

**When in doubt, fail the QA.** Better to delay delivery than ship broken work.

**Remember:** The customer sees what you deliver, not what you intended to deliver.
