# 🎩 Consultancy Skill

> **Universal domain-configurable trio-agency consultancy system for Kimi CLI.**  
> Maker creates. Validator verifies. Aligner ensures fit.

---

## Documentation

📖 **[Complete User Manual & Training Guide →](MANUAL.md)**

- [Quick Start (5 min)](sections/02-Quick-Start.md)
- [The Trio Explained](sections/03-The-Trio.md)
- [Six-Phase Workflow](sections/04-Six-Phases.md)
- [Five Domains](sections/05-Domains.md)
- [5 Project Examples](sections/08-Fictitious-Projects.md)
- [Troubleshooting](sections/09-Troubleshooting.md)
- [Reference Guide](sections/10-Reference.md)

---

## Quick Start

### Install

```cmd
# Clone the repository
git clone https://github.com/yourusername/consultancy-skill.git
cd consultancy-skill\release

# Run installer
INSTALL.bat
```

Or manually:
```cmd
xcopy /E /I "consultancy-skill\release" "%USERPROFILE%\.config\agents\skills\consultancy"
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

[More about the Trio →](sections/03-The-Trio.md)

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

[More commands & examples →](sections/10-Reference.md)

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

[Complete workflow walkthrough →](sections/04-Six-Phases.md)

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

[Detailed domain guide with examples →](sections/05-Domains.md)

---

## Phase Gates (Quality Assurance)

The consultancy skill includes **mandatory verification gates** between phases to ensure quality:

| Gate | When | Checks |
|------|------|--------|
| **D→D** | Discovery → Design Review | REQUIREMENTS.md, CR created, prompts logged |
| **D→B** | Design → Build | DESIGN.md, constraints, assumptions documented |
| **B→V** | Build → Validation | **Syntax check** (E001), **no "should work"**, verification run |
| **V→De** | Validation → Delivery | Pre-delivery checklist (7 checks), evidence archived |

**Enforcement Levels:**
- **Advisory (L1):** Warning, can override
- **Blocking (L2):** Must fix or formally justify (E001, E088)
- **Non-Bypassable (L3):** No override (not currently used)

[More about Phase Gates →](sub-skills/phase-transition-gate.md)

---

## Personalization

The skill learns your preferences over time. Edit `user-preferences.yaml` in the skill directory to add:

### Built-in Preferences

| ID | Pattern | Effect |
|----|---------|--------|
| pref_001 | quality_over_speed | Always prioritize quality |
| pref_002 | full_traceability | Require complete documentation |
| pref_003 | **cr_as_memory** | **Log all prompts as Change Requests** |

With `pref_003` enabled, every conversation is persisted to `enhancements/change/` for long-term memory and audit trail.

### Custom Preferences

Add your own:

- Decision criteria (quality vs speed preferences)
- Completion standards (what "done" means to you)
- Communication style preferences
- Domain-specific defaults

See the examples in the file for format.

[More about personalization →](sections/07-User-Preferences.md)

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

[More troubleshooting help →](sections/09-Troubleshooting.md)

---

## License

MIT
