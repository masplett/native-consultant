# Section 9: Troubleshooting

> 🔥 **Critical First Step**: When something goes wrong, don't panic. The Consultancy Skill is designed with recovery in mind. Most issues have simple solutions.

---

## Common Issues & Solutions

### 1. "consult" Doesn't Activate

**Symptom:** You type `consult` but Kimi responds with "I don't understand" or treats it as a regular conversation.

**Diagnosis Steps:**
1. Check if the skill is installed: Look for `consultancy-skill` in your Kimi skills directory
2. Verify the skill-manifest.yaml is properly configured
3. Confirm INSTALL.bat was run with administrator privileges
4. Check for syntax errors in your domains.yaml file

**⚡ Quick Fix:**
```bash
# Re-run the installation
INSTALL.bat
```

**If that doesn't work:**
- Manually verify the skill path in your Kimi configuration
- Ensure the skill-manifest.yaml contains the proper activation phrases
- Restart Kimi CLI completely (close and reopen terminal)

---

### 2. Changes Not Taking Effect

**Symptom:** You've modified domains.yaml or other configuration files, but the behavior hasn't changed.

**Causes & Solutions:**

| Cause | Solution |
|-------|----------|
| Kimi CLI caching | Restart Kimi CLI completely |
| File not saved | Verify changes were written to disk |
| Wrong file location | Double-check you're editing the correct path |
| YAML syntax error | Validate YAML with a linter |

**⚡ Quick Fix:**
```bash
# Full restart sequence
1. Save all files
2. Exit Kimi CLI completely
3. Reopen terminal
4. Restart Kimi CLI
```

---

### 3. Context Limit Exceeded

**Symptom:** Responses become truncated, Kimi seems to "forget" earlier parts of the conversation, or you see warnings about token limits.

**Recognition Signs:**
- Output cuts off mid-sentence
- Previously discussed requirements are repeated
- "As I mentioned earlier..." appears frequently in responses
- Slower response times

**Recovery Strategy:**
1. **Immediately pause**: Type `pause` to save current state
2. **Summarize**: Ask for a concise summary of work completed so far
3. **Split**: Break remaining work into smaller chunks
4. **Resume**: Start a new session with the summary as context

**Prevention:**
- Split large requirements into smaller sub-tasks
- Use `explore` for spikes before full `consult` sessions
- Regularly summarize and checkpoint progress
- Avoid dumping entire codebases at once

---

### 4. Validator Keeps Finding Issues

**Understanding the Tension:**

The Validator's job is to find problems. This can feel adversarial, but it's actually protective. The tension is intentional—it ensures quality without blocking progress indefinitely.

**Decision Framework:**

| Validator Finding | Your Response |
|-------------------|---------------|
| Safety/security issue | Always fix |
| Missing documentation | Usually fix |
| Style preference | Discuss/override if consistent |
| Scope creep suggestion | Discuss with Aligner |
| Edge case you accept | Document and override |

**When to Override:**
1. You've documented the trade-off decision
2. The Aligner agrees the risk is acceptable
3. Time-to-value outweighs the issue
4. The fix would require significant scope expansion

**How to Override:**
```
"Validator: Acknowledged. Documenting accepted risk in DECISIONS.md. 
Proceeding with current implementation. Aligner concurs."
```

---

### 5. Gate Paralysis

**Symptom:** You can't decide whether to [A]pprove or [R]evise at a gate checkpoint.

**Decision Framework:**

```
ASK YOURSELF:
├── Is it safe to proceed? (security/safety)
│   └── NO → [R]evise immediately
│
├── Does it meet core requirements?
│   └── NO → [R]evise
│
├── Are there known issues?
│   ├── Can they be fixed post-delivery? → [A]pprove with backlog
│   └── Must be fixed now? → [R]evise
│
└── Is perfection the enemy of good? → [A]pprove
```

**⚡ Quick Fix:** If stuck for more than 5 minutes, choose [R]evise for one specific issue. It's easier to approve later than recover from a bad approval.

---

### 6. Domain Misdetection

**Symptom:** The skill detects the wrong domain for your project, leading to inappropriate specialists or protocols.

**Override Methods:**

**Method 1: Explicit Declaration**
```
"consult [domain-name]"
```

**Method 2: Configuration Override**
Add to your user-preferences.yaml:
```yaml
default_domain: "your-domain"
```

**Method 3: Context Hint**
Start your request with domain keywords:
```
"For my Python web project..."
"In the context of React development..."
```

**Common Domain Keywords:**
- **python**: Python, Django, Flask, FastAPI, pandas
- **javascript**: JavaScript, React, Node.js, Vue, Angular
- **web**: HTML, CSS, frontend, responsive
- **data**: SQL, database, analytics, ETL
- **devops**: Docker, Kubernetes, CI/CD, AWS

---

### 7. Fast-Track Rejected

**Why It Happens:**

Fast-track mode is designed for well-understood, low-risk tasks. The system may reject it when:

| Reason | Alternative Approach |
|--------|---------------------|
| Security implications detected | Use full `consult` with security review |
| Sensitive data detected | Use `consult` with privacy protocols |
| Novel/unfamiliar pattern | Use `explore` first, then `consult` |
| High business impact | Full 6-phase workflow recommended |
| Insufficient context provided | Add more requirements detail |

**Recovery:**
1. Don't fight the rejection—it's protective
2. Assess why it was rejected (check system messages)
3. Choose the appropriate alternative mode
4. Document the pivot for future reference

---

## FAQ Section

**Q: Can I skip phases?**

A: Generally, no. Each phase builds on the previous. However:
- **Explore mode**: Skips to quick spike (single phase)
- **Fast-track**: Condenses phases but maintains gates
- **Override**: Possible with explicit `[skip]` directive, but not recommended

Skipping phases risks missing critical validation or alignment checks.

**Q: What if I disagree with the Validator?**

A: First, understand the concern. Then:
1. Document the disagreement and your reasoning
2. Check with the Aligner for broader context impact
3. If you have Maker authority and accept the risk, override with explanation
4. Log the decision in DECISIONS.md

**Q: How do I pause and resume?**

A: 
- **Pause**: Type `pause` or say "pause this session"
- State is saved to PROJECT_STATE.md
- **Resume**: Restart with "resume [project-name]" or load PROJECT_STATE.md

Important: Pausing saves progress but doesn't preserve full context. Expect to spend 5-10 minutes re-orienting on resume.

**Q: Can I use multiple domains?**

A: Yes, through domain composition:
```yaml
# In domains.yaml
composite_domains:
  fullstack:
    base: web
    extensions:
      - python
      - database
```

Or inline:
```
"consult python + web + database for my fullstack project"
```

**Q: What's the difference between explore and fast-track?**

| Aspect | Explore | Fast-Track |
|--------|---------|------------|
| Purpose | Spike/investigation | Quick delivery |
| Output | Findings, options | Working deliverable |
| Gates | One (review) | Two (validation, QA) |
| Time | 15-30 min | 1-2 hours |
| Best for | Unknown territory | Known, low-risk tasks |

---

## Emergency Procedures

### "I Broke Something!" Recovery

🔥 **Don't panic. Follow this sequence:**

1. **Stop**: Don't issue more commands
2. **Assess**: What broke? Output, behavior, or file state?
3. **Checkpoint**: If files are affected, copy them before trying fixes
4. **Rollback**: Restore from last known good state
5. **Resume**: Re-enter the workflow at the appropriate phase

### Getting Back to Known-Good State

**Option 1: Soft Reset**
```
"Reset to last checkpoint"
```
Returns to last gate without losing work.

**Option 2: Hard Reset**
```
"Complete reset, preserve requirements only"
```
Keeps requirements, restarts from Discovery.

**Option 3: File Restore**
```bash
# Restore from evidence backups
copy evidence\checkpoint_*.md .\
```

### When to Exit and Restart

**Exit immediately if:**
- System becomes unresponsive
- Output is clearly hallucinated or corrupted
- You've issued conflicting commands that created undefined state
- Token/context limits have clearly been exceeded

**Exit procedure:**
1. Type `pause` to attempt state save
2. If pause works, note the checkpoint ID
3. Exit Kimi CLI completely
4. Wait 10 seconds
5. Restart and resume from checkpoint

---

> **Remember**: The Consultancy Skill is designed for recovery. Every phase creates artifacts you can return to. When in doubt, pause, document, and reset to the last clean checkpoint.
