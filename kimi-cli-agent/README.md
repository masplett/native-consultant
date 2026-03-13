# 🎩 Native Consultant Agent

A standalone agent for [kimi-cli](https://github.com/MoonshotAI/kimi-cli) that brings structured consulting workflows with the **Maker/Validator/Aligner** trio.

## Features

- **6-Phase Workflow**: Discovery → Design Review → Build → Validation Review → QA → Delivery
- **Three Specialist Roles**: Maker (builds), Validator (verifies), Aligner (guides)
- **Interactive Gates**: Explicit approval at Design and Validation phases
- **Parallel Execution**: Maker and Validator work simultaneously
- **Domain Detection**: Software, Manufacturing, Fashion, Enterprise, Data
- **Multiple Modes**: Standard (`consult`), Quick (`explore`), Express (`fast-track`)

## Installation

### Option 1: Direct Usage (Recommended)

```bash
# Clone or download this directory
# Then run:
kimi chat --agent-file /path/to/native-consultant/agent.yaml
```

### Option 2: Install to Config Directory

**Windows:**
```powershell
# Copy to user config
xcopy /E /I native-consultant %USERPROFILE%\.config\agents\native-consultant

# Run
kimi chat --agent-file %USERPROFILE%\.config\agents\native-consultant\agent.yaml
```

**Mac/Linux:**
```bash
# Copy to user config
mkdir -p ~/.config/agents
cp -r native-consultant ~/.config/agents/

# Run
kimi chat --agent-file ~/.config/agents/native-consultant/agent.yaml
```

### Option 3: Shell Alias

Add to your shell profile:

```bash
# Bash/Zsh
alias consult='kimi chat --agent-file ~/.config/agents/native-consultant/agent.yaml'

# PowerShell
function consult { kimi chat --agent-file "$env:USERPROFILE\.config\agents\native-consultant\agent.yaml" }
```

Then simply:
```bash
consult
```

## Usage

Once the agent is running, use these commands:

| Command | Description |
|---------|-------------|
| `consult` | Start full 6-phase workflow |
| `explore` | Quick prototype mode |
| `fast-track` | Express mode (3 questions only) |
| `status` | Show current phase and progress |
| `delegate [role]` | Spawn specialist (maker/validator/aligner/security/performance) |

## Workflow

### Phase 1: Discovery
Aligner gathers requirements, creates `REQUIREMENTS.md`

### Phase 2: Design Review  
Present 2-3 approaches, user approves via interactive gate

### Phase 3: Build
Maker and Validator work in parallel using subagents

### Phase 4: Validation Review
User reviews evidence, approves via interactive gate

### Phase 5: Final QA
All three agents verify deliverable

### Phase 6: Delivery
Handover with documentation and evidence

## File Structure

```
native-consultant/
├── agent.yaml              # Main agent definition
├── system.md               # Core system prompt (6-phase workflow)
├── specialists/
│   ├── maker.yaml          # Creates deliverables
│   ├── validator.yaml      # Verifies quality
│   ├── aligner.yaml        # Ensures right problem
│   ├── requirements-analyst.yaml  # Deep requirements analysis
│   ├── security-developer.yaml    # Security-focused
│   └── performance-developer.yaml # Optimization
└── README.md               # This file
```

## Customization

### Add New Specialist

1. Create `specialists/my-specialist.yaml`
2. Add to `agent.yaml` subagents section
3. Use via `delegate my-specialist`

### Modify Workflow

Edit `system.md` - it contains all phase definitions, safety rules, and response formats.

### Adjust Tools

Edit `agent.yaml` tools section to add/remove capabilities.

## Safety

The agent enforces these boundaries:
- ❌ No file deletion without confirmation
- ❌ No production pushes without approval  
- ❌ No skipping validation gates
- ❌ No delivery without evidence
- ✅ Explicit approval at Design and Validation gates
- ✅ Evidence required for all claims

## Integration with kimi-cli

This is a **user agent** - it extends kimi-cli's default agent with:
- Custom system prompt
- 6 specialist subagents
- Structured workflow patterns

It requires no changes to kimi-cli core - just load with `--agent-file`.

## Version

v6.1 - Based on native-consultant skill system

## License

Same as your project - this is your private agent configuration.
