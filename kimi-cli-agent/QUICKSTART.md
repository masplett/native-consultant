# 🚀 Quick Start

## 1. Verify kimi-cli is installed

```bash
kimi --version
```

If not installed: https://github.com/MoonshotAI/kimi-cli

## 2. Run the agent

```bash
# From this directory
kimi chat --agent-file ./agent.yaml
```

## 3. First Session

You'll see:
```
🎩 Universal Consultant v6.1

┌─────────┬─────────────────────────────────────────────────────────────┐
│ STATUS  │ Standby — Maker: ready │ Validator: ready │ Aligner: active │
├─────────┼─────────────────────────────────────────────────────────────┤
│ ACTIVE  │ Aligner — Awaiting your challenge                           │
│ VERIFY  │ Context stack ready                                         │
│ ALIGN   │ Domain: detecting...                                        │
└─────────┴─────────────────────────────────────────────────────────────┘

What are we building?

OPTIONS   explore │ consult │ fast-track
```

## 4. Try a Command

Type one of:
- `consult` - Full workflow
- `explore` - Quick prototype
- `fast-track` - Express mode

## 5. Follow the Workflow

The agent will guide you through each phase with:
- Clear status displays
- Interactive approval gates
- Parallel specialist work
- Evidence-based validation

## Example Session

**User:** `consult`

**Agent:** Enters Discovery phase, asks 5 questions

**User:** [answers questions]

**Agent:** Creates REQUIREMENTS.md, moves to Design Review

**Agent:** Presents 2-3 approaches, asks for approval

**User:** [selects option A]

**Agent:** Spawns Maker and Validator in parallel

**Maker:** Builds the solution

**Validator:** Reviews and tests

**Agent:** Presents Validation Review gate

**User:** [approves]

**Agent:** Final QA, Delivery with documentation

## Tips

- **Use `status`** anytime to see where you are
- **Use `pause`** to save progress and resume later
- **The agent tracks everything** in REQUIREMENTS.md, STATUS.md, evidence/
- **Don't skip gates** - they're there for quality

## Troubleshooting

**Agent not found:**
- Check path to agent.yaml is correct
- Use absolute path if relative doesn't work

**Subagent fails:**
- Check specialists/ directory exists alongside agent.yaml
- Verify yaml syntax in all files

**Tools not working:**
- Ensure kimi-cli is up to date
- Check `kimi --version` supports all tools in agent.yaml

## Next Steps

- Review `system.md` to understand the full workflow
- Customize specialists/ for your needs
- Add your own domain-specific specialists
