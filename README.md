# 🎩 Native Consultant

> **Native Kimi CLI skill for structured AI consulting.**  
> Works with `kimi chat` and `kimi web`.  
> Maker creates. Validator verifies. Aligner ensures fit.

---

## Quick Start

### Install

```cmd
# Clone the repository
git clone https://github.com/yourusername/native-consultant.git
cd native-consultant

# Run installer
INSTALL.bat
```

Or manually:
```cmd
xcopy /E /I "native-consultant" "%USERPROFILE%\.config\agents\skills\native-consultant"
```

### Use

**Via terminal (`kimi chat`):**
```cmd
kimi chat
> consult
```

**Via web interface (`kimi web`):**
```cmd
kimi web
> consult
```

---

## Terminal Format

All responses use clean terminal-style columns:

```
STATUS    Discovery — Maker: standby | Validator: standby | Aligner: active
ACTIVE    Aligner — Interviewing user
VERIFY    Requirements clarity check
ALIGN     3/5 questions answered

What's the success criteria?
OPTIONS   explore | consult | fast-track
```

---

## The Trio

You talk to the **Contact** (AI). Behind the scenes:

| Role | Job | Mindset |
|------|-----|---------|
| **Maker** | Creates deliverable | "I build it" |
| **Validator** | Verifies it works | "I find what's broken" |
| **Aligner** | Ensures right problem | "I solve the real need" |

Quality comes from tension between roles, not one AI doing everything.

---

## Commands

| Command | What It Does |
|---------|--------------|
| `consult` | Start standard 6-phase workflow |
| `explore` | Quick prototype/spike (10 min) |
| `fast-track` | Express mode (3 questions) |
| `show preview` | Display HTML preview panel |
| `status` | Current phase and progress |
| `pause` | Save state, resume later |
| `exit` | Return to normal mode |

---

## Workflow

```
ENTRY: consult | explore | fast-track
    │
    ▼
┌──────────────────┐
│ DOMAIN DETECTION │ ← Auto-detect or specify
└────────┬─────────┘
         │
         ▼
┌──────────────────┐
│ 1. DISCOVERY     │ ← Aligner interviews
│ REQUIREMENTS.md  │
└────────┬─────────┘
         │
         ▼
┌──────────────────┐
│ 2. DESIGN REVIEW │ ← Gate: [A]pprove/[R]evise/[C]ancel
│ Select approach  │
└────────┬─────────┘
         │
         ▼
┌──────────────────┐
│ 3. BUILD         │ ← Maker + Validator parallel
│ Create deliverable│
└────────┬─────────┘
         │
         ▼
┌──────────────────┐
│ 4. VALIDATION    │ ← Gate: [P]ass/[F]ix/[F]ail
│ Verify it works  │
└────────┬─────────┘
         │
         ▼
┌──────────────────┐
│ 5. FINAL QA      │ ← Pre-delivery checklist
│ All three review │
└────────┬─────────┘
         │
         ▼
┌──────────────────┐
│ 6. DELIVERY      │ ← Git commit + archive
│ Handover         │
└──────────────────┘
```

---

## Example Session

```
User: consult

AI: 🎩 Universal Consultant v6.1

    STATUS    Standby — Maker: ready | Validator: ready | Aligner: active
    ACTIVE    Aligner — Awaiting your challenge
    VERIFY    Context stack ready
    ALIGN     Domain: software
    
    What are we building?
    OPTIONS   explore | consult | fast-track

User: I need a Python script to rename photos by date

AI: STATUS    Discovery — Maker: standby | Validator: standby | Aligner: active
    ACTIVE    Aligner — Clarifying requirements
    VERIFY    Requirements gathering
    ALIGN     1/5 questions answered
    
    Which photo formats? (JPG, RAW, etc.)
    OPTIONS   specify formats | skip to design

User: JPG only, Windows

AI: [Design Review Gate]
    Maker proposes: Python + os/exif libraries
    Validator: Testable, low risk
    Aligner: Matches requirements
    
    [A]pprove  [R]evise  [C]ancel

User: A

AI: STATUS    Build — Maker: 80% | Validator: 8/8 pass | Aligner: aligned
    ACTIVE    Maker — Writing EXIF date extraction
    VERIFY    Validator: All tests passing
    ALIGN     On track
    
    Building deliverable...
    OPTIONS   show progress | pause

AI: [Validation Gate]
    Verification: 8/8 tests pass, 100% coverage
    
    [P]ass  [F]ix  [F]ail

User: P

AI: Deliverable: photo_renamer.py
    Evidence: task-001/evidence/
    
    [Push to git]  [Make changes]

User: Push

AI: ✅ Delivered and archived.
```

---

## Five Domains

| Domain | Maker | Validator | Aligner | Use For |
|--------|-------|-----------|---------|---------|
| **software** | Coder | Tester | Business Analyst | Python, JavaScript, APIs |
| **manufacturing** | Designer | Engineer | Product Manager | 3D printing, CAD |
| **fashion** | Designer | Fitter | Consultant | Wedding dresses, garments |
| **aerospace** | Engineer | QA | Architect | Rocket parts, components |
| **enterprise** | Developer | QA/Security | Product Owner | Corporate systems |

---

## Safety

**Never without confirmation:**
- Delete files outside working directory
- Push to main/master
- Skip validation gates
- Claim delivery without evidence

**Always required:**
- Explicit approval at gates
- Evidence for verification claims
- Human review before delivery
- Git commit with full context

---

## Troubleshooting

### "consult" doesn't activate

Check if skill is installed:
```cmd
dir "%USERPROFILE%\.config\agents\skills\consultancy"
```

If not found, re-run `INSTALL.bat`.

### Changes not taking effect

Restart your Kimi CLI session:
```cmd
kimi chat
```

---

## License

MIT
