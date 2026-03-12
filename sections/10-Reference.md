# Section 10: Reference

> Quick lookup guide for the Consultancy Skill. Keep this handy during active sessions.

---

## Command Cheat Sheet

| Command | When to Use | Example |
|---------|-------------|---------|
| `consult` | Full 6-phase project | `consult python web app` |
| `explore` | Quick spike/investigation | `explore React state options` |
| `fast-track` | Known scope, quick delivery | `fast-track add user model` |
| `status` | Check current phase/state | `status` |
| `pause` | Save state and stop | `pause` |
| `exit` | End session | `exit` |
| `help` | Show available commands | `help` |

### Command Modifiers

| Modifier | Effect | Example |
|----------|--------|---------|
| `[domain]` | Specify domain explicitly | `consult python` |
| `+` | Add domain | `consult web + api` |
| `fast` | Speed mode (fewer gates) | `consult fast` |
| `deep` | Thorough mode (more validation) | `consult deep` |

---

## Terminal Format Reference

### Status Line Format
```
STATUS    {phase} — Maker: {state} | Validator: {state} | Aligner: {state}
```

**Example:**
```
STATUS    Build — Maker: implementing | Validator: queued | Aligner: monitoring
```

### Activity Line Format
```
ACTIVE    {role} — {activity}
```

**Example:**
```
ACTIVE    Maker — Writing database models
```

### Validation Line Format
```
VERIFY    {validation check}
```

**Example:**
```
VERIFY    Security scan: PASSED
```

### Alignment Line Format
```
ALIGN     {alignment status}
```

**Example:**
```
ALIGN     Requirements match: OK | Risk: LOW
```

### Gate Prompt Format
```
[GATE: {gate-name}]
{R|A|C|F|P} » 
```

**Keys:**
- `A` = Approve / Pass
- `R` = Revise
- `C` = Cancel
- `P` = Pass (validation)
- `F` = Fix or Fail (validation)

---

## Gate Reference

### Design Review Gate

**Triggers at:** End of Design phase  
**Purpose:** Approve design before building  
**Options:**

| Key | Action | When to Use |
|-----|--------|-------------|
| `[A]pprove` | Proceed to Build | Design meets requirements |
| `[R]evise` | Return to Design | Changes needed |
| `[C]ancel` | Abort project | Design fundamentally flawed |

### Validation Gate

**Triggers at:** End of Build phase  
**Purpose:** Verify deliverables meet standards  
**Options:**

| Key | Action | When to Use |
|-----|--------|-------------|
| `[P]ass` | Proceed to QA | All checks passed |
| `[F]ix` | Return to Build | Issues found, fix required |
| `[F]ail` | Abort/Redesign | Critical issues, restart |

### QA Gate

**Triggers at:** End of QA phase  
**Purpose:** Final quality check  
**Options:**

| Key | Action | When to Use |
|-----|--------|-------------|
| `[A]pprove` | Proceed to Deliver | QA passed |
| `[R]evise` | Return to Build/QA | Issues found |
| `[C]ancel` | Abort | Critical failure |

---

## Domain Quick-Select

### Keywords by Domain

| Domain | Trigger Keywords |
|--------|------------------|
| **python** | Python, Django, Flask, FastAPI, pandas, numpy, scikit-learn, pytest, pip, virtualenv |
| **javascript** | JavaScript, TypeScript, React, Vue, Angular, Node.js, Express, npm, webpack, babel |
| **web** | HTML, CSS, frontend, responsive, Bootstrap, Tailwind, SASS, accessibility |
| **database** | SQL, PostgreSQL, MySQL, MongoDB, Redis, ORM, migration, query |
| **devops** | Docker, Kubernetes, AWS, Azure, GCP, CI/CD, Jenkins, GitHub Actions, Terraform |
| **mobile** | iOS, Android, React Native, Flutter, Swift, Kotlin, mobile app |
| **data** | analytics, ETL, data science, machine learning, AI, visualization, pandas |
| **security** | auth, OAuth, JWT, encryption, vulnerability, penetration testing |

### Explicit Domain Selection

```bash
consult [domain] [description]
```

**Examples:**
```bash
consult python "Build an API"
consult web + python "Fullstack dashboard"
consult devops "Setup CI/CD pipeline"
```

---

## File Structure Reference

### Standard Project Layout

```
project/
├── README.md              # Project overview
├── REQUIREMENTS.md        # Captured requirements
├── DESIGN.md              # Design specifications
├── DECISIONS.md           # Key decisions log
├── PROJECT_STATE.md       # Current state for resume
├── deliverables/          # Built artifacts
│   ├── code/
│   ├── configs/
│   └── docs/
└── evidence/              # Verification artifacts
    ├── checkpoints/
    ├── validations/
    └── reviews/
```

### Key Files

| File | Purpose | When Created |
|------|---------|--------------|
| `REQUIREMENTS.md` | User requirements | Discovery phase |
| `DESIGN.md` | Technical design | Design phase |
| `DECISIONS.md` | Decision log | Throughout |
| `PROJECT_STATE.md` | Session state | Pause/resume |
| `BUILD_SUMMARY.md` | Build record | Build phase |
| `VALIDATION_REPORT.md` | Validation results | Validation phase |
| `QA_REPORT.md` | QA findings | QA phase |

---

## Glossary

**Aligner**  
The agent responsible for ensuring deliverables match requirements and user intent. Provides the "alignment check" throughout the workflow.

**Context Budget**  
The estimated token/character limit for the current session. Managed by splitting large tasks and checkpointing regularly.

**Domain**  
A specialized knowledge area (e.g., python, web, devops) that configures the skill with relevant specialists, protocols, and templates.

**Evidence**  
Verifiable artifacts (logs, test results, documentation) that support claims made during the workflow. Emphasized over assertions.

**Fast-Track**  
An accelerated mode for well-understood, low-risk tasks that condenses phases while maintaining essential gates.

**Gate**  
A checkpoint requiring explicit user decision before proceeding. Ensures quality control and prevents runaway automation.

**Maker**  
The primary agent responsible for building deliverables. Executes the creative/implementation work.

**Phase**  
One of six stages in the standard workflow: Discovery, Design Review, Build, Validation Review, QA, Delivery.

**Validator**  
The agent responsible for checking quality, security, and correctness. Acts as a protective counterbalance to the Maker.

---

## Quick Tips

| Situation | Action |
|-----------|--------|
| Lost track of phase | Type `status` |
| Need to go back | Request "return to [phase]" |
| Want to skip validation | Not recommended—use `[A]pprove` with documented exception |
| Unsure about decision | Ask Aligner for guidance |
| Running long | Type `pause` to checkpoint |
| Validator too strict | Document override rationale |

---

## Keyboard Shortcuts (when supported)

| Shortcut | Action |
|----------|--------|
| `Ctrl+C` | Cancel current operation |
| `Ctrl+D` | Exit session |
| `↑` / `↓` | Navigate command history |
| `Tab` | Auto-complete commands |

---

## Emergency Contacts

| Issue | Resource |
|-------|----------|
| Skill not loading | Check SKILL.md documentation |
| Domain problems | Review domains.yaml |
| Installation issues | Re-run INSTALL.bat |
| General help | Reference this guide or type `help` |

---

> **Pro Tip**: Bookmark this page. When you're deep in a build phase and need a quick reference, it's faster than scrolling through full documentation.
