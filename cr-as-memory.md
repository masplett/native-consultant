# Protocol: CR-as-Memory (E163)

**Status:** IMPLEMENTED  
**Version:** 1.0  
**Applies To:** All consultancy skill sessions

---

## The Rule

> **Every user prompt is a Change Request. Every Change Request is persisted.**

---

## Execution Steps

### Step 1: Detect Session Start
```
IF first interaction in session:
    → Create new CR file
ELSE:
    → Continue existing CR
```

### Step 2: Create CR File

**Location:** `enhancements/change/CR###_[title].md`

**Auto-generate title:**
- Extract keywords from first user prompt
- Limit to 4-5 words
- Use snake_case

Example:  
`"create user manual for release directory"` → `CR164_documentation_user_manual.md`

### Step 3: Record User Prompt

**Append to CR:**
```markdown
### Turn N [timestamp]

**User:**
> [Exact user prompt]
```

### Step 4: Execute Task

Proceed with normal consultancy workflow.

### Step 5: Record AI Response

**Append to CR BEFORE showing response to user:**
```markdown
**AI:**
> [Summary of response - key actions, decisions, outputs]
```

### Step 6: Update Metadata

**Append context snapshot:**
```markdown
**Context:**
- Files read: [list]
- Files modified: [list]
- Tools used: [list]
- Git commits: [list]
```

### Step 7: Check for Resolution

```
IF user says "done", "complete", "that's all", "thanks, goodbye":
    → Mark CR as RESOLVED
    → Move to enhancements/resolved/
    → Add resolution section
ELSE:
    → Keep CR ACTIVE
```

---

## Directory Structure

```
enhancements/
├── change/          # Active CRs (current sessions)
│   ├── CR164_...
│   └── CR165_...
└── resolved/        # Completed CRs
    ├── CR001_...
    └── ...
```

---

## CR Numbering

**Format:** `CR###` (3 digits, zero-padded)

**Source of truth:**
1. Scan enhancements/change/ for highest number
2. Scan enhancements/resolved/ for highest number
3. Next CR = max + 1

---

## Exception Handling

### Pure Reference Detection
If user prompt matches:
- `"status?"`
- `"is it done?"`
- `"what about that?"`
- `"any update?"`

**Action:**
1. Find most recent CR for this context
2. Append as comment, not new turn
3. Do NOT increment turn counter

### Multi-CR Sessions
If user switches topics mid-session:
1. Close current CR (mark context switch)
2. Create new CR for new topic
3. Both remain in enhancements/change/ until resolved

---

## Verification

**Checklist for each interaction:**
- [ ] CR file exists or was created
- [ ] User prompt recorded
- [ ] AI response recorded
- [ ] Timestamp present
- [ ] Context snapshot updated

---

## Example CR Lifecycle

### Creation
```
User: "consult"
→ Create CR165_user_consultation.md
→ Record: "consult"
→ AI responds, records response

User: "I need a Python script"
→ Append to CR165
→ Record prompt and response

User: "thanks, that's all"
→ Mark RESOLVED
→ Move to enhancements/resolved/
```

---

## Integration with User Preferences

Check `user-preferences.yaml`:

```yaml
pref_003:
  pattern: "cr_as_memory"
  rule: "All prompts create or append to CR"
  priority: "critical"
```

**If pref_003 exists → Execute this protocol**  
**If pref_003 missing → Skip (backward compatible)**

---

## QA Check

**Final QA must verify:**
- CR files exist for session
- All prompts recorded
- All responses recorded
- No missing turns

---

**End Protocol**
