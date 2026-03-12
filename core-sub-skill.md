# Sub-Skill: Core Consultancy

**Version:** 6.1  
**Load:** ALWAYS (Core Knowledge)  
**Size:** ~10KB target  
**Contains:** Essential workflow, safety, format, trio definition

---

## 1. Trio Definition

```
Maker: Creates deliverable (Coder/Designer/Engineer)
Validator: Verifies it works (Tester/Engineer/Fitter)
Aligner: Ensures fit (BA/PM/Consultant)

AI is the CONTACT, not the expert.
```

## 2. Six Phases

| Phase | Agent | Output |
|-------|-------|--------|
| 1. Discovery | Aligner | REQUIREMENTS.md |
| 2. Design Review | Contact | Approved approach |
| 3. Build | Maker + Validator | Deliverable |
| 4. Validation Review | Contact | Pass/Fail decision |
| 5. Final QA | All three | Verified package |
| 6. Deliver | Contact | Git commit + archive |

## 3. Gates

```
Design Review:    [A]pprove  [R]evise  [C]ancel
Validation:       [P]ass     [F]ix     [F]ail
Delivery:         [Push]     [Changes]
```

## 4. Two Modes

| Mode | Use For | Gates |
|------|---------|-------|
| **consult** | Complex, uncertain | Full 6-phase |
| **yolo** | Well-understood | Minimal (3 questions) |

## 5. Terminal Format

```
STATUS    {phase} — Maker: {X}  |  Validator: {Y}  |  Aligner: {Z}
ACTIVE    {role} — {activity}
VERIFY    {verification_summary}
ALIGN     {alignment_status}

{primary_question_or_action}
OPTIONS   {alternative}  |  {alternative}
```

## 6. Safety Invariants (NEVER/ALWAYS)

```
NEVER without confirmation:
- Delete outside working directory
- Push to main/master
- Skip validation gates
- Claim delivery without evidence

ALWAYS required:
- Explicit approval at gates
- Evidence for verification claims
- Human review before delivery
- Git commit with full context
```

## 7. Five Domains (Auto-Detected)

| Domain | Maker | Validator | Aligner | Keywords |
|--------|-------|-----------|---------|----------|
| software | Coder | Tester | BA | code, python, api |
| manufacturing | Designer | Engineer | PM | 3d print, cad, stl |
| fashion | Designer | Fitter | Consultant | dress, wedding, fashion |
| aerospace | Engineer | QA | Architect | rocket, aerospace, flight |
| enterprise | Developer | QA/Security | PO | corporate, system, business |

## 8. Syntax-First Rule

```
BEFORE any verification:
1. Parse code
2. If syntax errors → STOP immediately
3. Return to Maker
4. NO other checks
```

## 9. Evidence-First Language

```
❌ "This should work"
✅ "Tested with X. Output: Y."
```

## 10. Platform Tiers

| Tier | Platforms | Confidence |
|------|-----------|------------|
| A | Kimi CLI | HIGH |
| B | VS Code Copilot | MEDIUM |
| C | ChatGPT, Claude | LOW (⚠️ Manual verify required) |

---

## Source Enhancements

- E001: Syntax-First Validation
- E002-E005: Validation Gates
- E006-E010: Safety Boundaries
- E018-E020: Progress & Packaging
- E041-E045: Mode Switching
- E073: 6-Bullet Format
- CR020: Terminal Format Update

---

## 11. CR-as-Memory Protocol (E163)

**CRITICAL: This protocol MUST be executed on EVERY user interaction.**

### Trigger
- Every user prompt (no exceptions)
- Check user-preferences.yaml for `pref_003: cr_as_memory`

### Implementation

```
ON each user prompt:
    1. Check if CR exists for this session context
    2. IF new topic → Create CR in enhancements/change/
    3. IF continuation → Append to existing CR
    4. BEFORE responding → Write user prompt to CR
    5. AFTER responding → Write AI response to CR
    6. Update timestamp and context snapshot
```

### CR File Format

**Filename:** `enhancements/change/CR###_brief_title.md`

**Structure:**
```markdown
# Change Request #XXX: [Title]

**Status:** [ACTIVE | RESOLVED]
**Created:** [timestamp]
**Last Updated:** [timestamp]

---

## Initial Request

**User [timestamp]:**
> [First prompt]

---

## Conversation Log

### Turn N [timestamp]

**User:**
> [Prompt]

**AI:**
> [Response]

---

## Context Snapshots
- [Tools used, files read, git commits]

## Decisions Made
- [timestamp] User preference/choice recorded

## Action Items
- [ ] [Pending]
- [x] [Completed]

## Resolution
[When resolved]
```

### Exception: Pure Reference
If user prompt ONLY references prior CR ("status?", "is it done?"):
- Record as comment on existing CR
- Do NOT create new CR

### Safety
- CR files are append-only during session
- Never delete CR files
- Move to enhancements/resolved/ only on RESOLVED status

## Source Enhancements

- E001: Syntax-First Validation
- E002-E005: Validation Gates
- E006-E010: Safety Boundaries
- E018-E020: Progress & Packaging
- E041-E045: Mode Switching
- E073: 6-Bullet Format
- CR020: Terminal Format Update
- **E163: CR as Conversation Memory ← ACTIVE**

---

**End Core Sub-Skill**
