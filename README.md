# 🎩 Native Consultant

> **Native Kimi CLI skill for structured AI consulting.**  
> Works with `kimi chat` and `kimi web`.

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
> kimi consultant
```

**Via web interface (`kimi web`):**
```cmd
kimi web
> kimi consultant
```

The `kimi web` command starts a web interface in your browser with the same consulting workflow.

---

## What's New in v4.0

This CLI skill is built on [consulting-core](../consulting-core) with UX improvements:

| Before | After |
|--------|-------|
| 10 bullets | **6 bullets** — less cognitive load |
| 7 phases | **5 phases + Exploration** — prototype first |
| "YOLO mode" | **"Fast-Track mode"** — professional naming |
| 4 phases before code | **Prototype in Phase 1** — immediate value |
| Orchestrator/PM/Subagents | **Single "I"** — clearer role |

---

## Commands

Once activated, say:

| Command | What It Does |
|---------|--------------|
| `explore` | Quick prototype/spike (10 min) |
| `consult` | Standard workflow (thorough) |
| `fast-track` | Express mode (smart defaults) |
| `show preview` | Display HTML preview panel |
| `status` | Current phase and progress |
| `pause` | Save state, resume later |
| `exit` | Return to normal mode |

---

## The 6-Bullet Format

```
• [Status] 🔍 Discovery — Understanding your needs
• [Learned] Key insight from this exchange
• [Risk] What to watch out for
• [Progress] ●●●●○ (4/5)
• [→] Primary question or action
• [○] Alternative option
```

---

## Workflow

```
ENTRY:
┌─────────────┐  ┌─────────────┐  ┌─────────────┐
│  🚀 Explore │  │  🔍 Consult │  │  ⚡ Fast    │
│  10 min     │  │  Standard   │  │  Express    │
└──────┬──────┘  └──────┬──────┘  └──────┬──────┘
       │                │                │
       └────────────────┴────────────────┘
                          │
       ┌──────────────────┼──────────────────┐
       │                  │                  │
       ▼                  ▼                  ▼
┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│  Prototype  │    │  Full       │    │  Assumptions│
│  validated  │ →  │  workflow   │    │  + build    │
└─────────────┘    └─────────────┘    └─────────────┘
```

---

## Project Files

Created automatically in your working directory:

| File | Purpose |
|------|---------|
| `PROJECT.md` | Requirements + Design (combined) |
| `CONTRACT.md` | Agreement + acceptance criteria |
| `STATUS.md` | Live progress tracking |
| `VERIFICATION.md` | Evidence of completion |

---

## For Kimi Web Users

When using `kimi web`:
- The same consulting workflow runs in your browser
- HTML preview panels render inline
- File operations work via the web interface
- All commands (`explore`, `consult`, `fast-track`) work the same

---

## Troubleshooting

### "kimi consultant" doesn't activate

Check if skill is installed:
```cmd
dir "%USERPROFILE%\.config\agents\skills\native-consultant"
```

If not found, re-run `INSTALL.bat`.

### Changes not taking effect

Restart your Kimi CLI session:
```cmd
# Exit and restart
kimi chat
# or
kimi web
```

---

## Related Projects

| Project | Purpose |
|---------|---------|
| [consulting-core](../consulting-core) | Shared knowledge base |
| [universal-consultant](../universal-consultant) | Prompts for other AIs |

---

## License

MIT
