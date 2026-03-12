# Your First 5 Minutes 🚀

## From Zero to Consulting Hero

You've read the introduction. You're intrigued by the trio. Now you're thinking: *"This sounds great, but how do I actually USE this thing?"*

Fair question. Let's get you from "curious browser" to "active user" in the next five minutes. By the end of this chapter, you'll have issued your first command, interacted with all three agents, and completed your first mini-project.

Ready? Set. Go! 🏁

---

## Step 1: Installation (2 Minutes)

### Option A: The Easy Way (Windows)

If you're on Windows, we have a treat for you. Simply run the provided batch file:

```batch
INSTALL.bat
```

This little script does all the heavy lifting:
- Verifies your Kimi CLI installation
- Creates the necessary directory structure
- Copies skill files to the right locations
- Sets up your user preferences

You'll see output like this:

```
========================================
  Consultancy Skill Installer v6.1
========================================
[OK] Kimi CLI detected
[OK] Skills directory located
[OK] Installing consultancy skill...
[OK] Installing sub-skills...
[OK] Configuration complete!

The Consultancy Skill is ready to use.
Type 'kimi consult' to begin.
```

### Option B: The Manual Way (Any OS)

Prefer to see exactly what's happening? No problem:

1. **Locate your skills directory:**
   - Windows: `%USERPROFILE%\.config\agents\skills\`
   - macOS/Linux: `~/.config/agents/skills/`

2. **Copy the skill files:**
   ```bash
   # Create the directory if it doesn't exist
   mkdir -p ~/.config/agents/skills/consultancy
   
   # Copy the main skill file
   cp consultancy-skill/SKILL.md ~/.config/agents/skills/consultancy/
   
   # Copy sub-skills
   cp -r consultancy-skill/sub-skills/* ~/.config/agents/skills/
   ```

3. **Verify the installation:**
   ```bash
   ls ~/.config/agents/skills/consultancy/
   # Should show: SKILL.md
   ```

### Quick Verification

Open a new terminal and type:

```bash
kimi --help | grep consult
```

If you see consultancy-related commands, you're golden! ✨

---

## Step 2: The Magic Word — "consult" (1 Minute)

Here's where the fun begins. Open your terminal and type:

```bash
kimi consult
```

That's it. That's the magic word. 🎩✨

Watch your terminal transform:

```
╔════════════════════════════════════════════════════════════════╗
║           CONSULTANCY SKILL v6.1 — ACTIVATED                   ║
║                                                                ║
║  🛠️ Maker  │  ✅ Validator  │  🎯 Aligner                      ║
║                                                                ║
╚════════════════════════════════════════════════════════════════╝

STATUS: Ready
DOMAIN: [software | manufacturing | fashion | aerospace | enterprise]

🎯 Aligner: Welcome! I'm here to help you define what you actually need.
   What domain are we working in today?

> 
```

Welcome to the trio! You're now in a structured consulting session.

---

## Step 3: Your First Interaction (1 Minute)

Let's walk through a realistic first interaction. Imagine you're a developer who needs to design a simple API endpoint.

### The Conversation Flow:

**You:**
```
> software
```

**🎯 Aligner:**
```
Perfect! Software domain selected.

What are we building today? Describe your challenge or goal.
(Be as specific or vague as you like—we'll refine it together!)
```

**You:**
```
I need a REST API endpoint for user registration with email verification
```

**🎯 Aligner:**
```
Excellent! Let me make sure I understand:

• Endpoint: User registration
• Feature: Email verification required
• Type: REST API

A few quick questions:
1. What technology stack? (Node.js, Python, Java, etc.)
2. Do you need the full implementation or just the design?
3. Any specific security requirements beyond standard practices?
```

**You:**
```
Python with Flask, full implementation, standard security is fine
```

**🛠️ Maker (now activated):**
```
STATUS: Discovery Complete → Build Phase
ACTIVE: Maker

Got it! I'll build a complete Flask user registration endpoint with:
✓ Email verification flow
✓ Password hashing
✓ Input validation
✓ Database integration (SQLite for demo)

Starting construction...
```

And just like that, you're in the Build phase! The Maker will generate code while the Validator watches for issues and the Aligner ensures the solution matches your needs.

---

## Step 4: Exploring Shortcuts (30 Seconds)

The `consult` command starts the full six-phase workflow, but sometimes you want something faster. Meet the shortcuts:

### "explore" — Quick Discovery Mode

Want to brainstorm without commitment?

```bash
kimi explore
```

This enters a lightweight mode where you can:
- Ask "what if" questions
- Explore different approaches
- Get quick feedback without full implementation
- Prototype ideas rapidly

Perfect for: Early-stage thinking, feasibility checks, brainstorming sessions

### "fast-track" — Skip to the Good Part

Already know exactly what you need?

```bash
kimi fast-track
```

This compresses the workflow:
- Brief Discovery (just the essentials)
- Streamlined Design Review
- Accelerated Build
- Focused Validation

Perfect for: Urgent tasks, well-understood problems, experienced users

> 💡 **Insider Tip:** Start with `consult` for your first few sessions. Once you understand the rhythm, `fast-track` becomes incredibly powerful for routine tasks.

---

## Step 5: Your First Victory (30 Seconds)

Let's complete your first mini-project. Continuing our API example, after the Maker finishes building, you'll see:

```
✅ Build Complete

Your Flask user registration API is ready!

📁 Files Created:
   • app.py (main application)
   • models.py (database models)
   • auth.py (authentication logic)
   • requirements.txt (dependencies)
   • README.md (setup instructions)

🔍 VALIDATOR NOTES:
   ✓ Input sanitization implemented
   ✓ Password hashing with bcrypt
   ✓ SQL injection protection active
   ✓ Rate limiting recommended (see todo.txt)

🎯 ALIGNER NOTES:
   ✓ Matches your requirements
   ⚠ Consider adding: password strength validation
   
Next: Run 'python app.py' to test locally
```

**Congratulations!** 🎉 You just completed your first consulting session. The trio:
- Understood your need (Aligner)
- Built a complete solution (Maker)
- Verified security and quality (Validator)

---

## Understanding the Terminal Format

As you work with the trio, you'll notice a consistent status display:

```
┌─────────────────────────────────────────────────────┐
│ STATUS    │ ACTIVE    │ VERIFY         │ ALIGN      │
├───────────┼───────────┼────────────────┼────────────┤
│ Building  │ Maker     │ ⚠ 2 warnings   │ ✓ Aligned  │
└───────────┴───────────┴────────────────┴────────────┘
```

**Column Meanings:**
- **STATUS:** Current phase of the workflow
- **ACTIVE:** Which agent is currently "driving"
- **VERIFY:** Validator's findings (✓ clean, ⚠ warnings, ✗ blocking issues)
- **ALIGN:** Whether the solution matches stated requirements

This at-a-glance dashboard keeps you informed without overwhelming detail.

---

## Essential Commands Cheat Sheet

| Command | What It Does |
|---------|--------------|
| `kimi consult` | Full 6-phase consulting workflow |
| `kimi explore` | Lightweight discovery/brainstorming |
| `kimi fast-track` | Accelerated workflow for known tasks |
| `status` | (In session) Show current phase and findings |
| `pause` | Save state and exit gracefully |
| `exit` | Close session (with summary) |

---

## Troubleshooting: When Things Don't Go As Planned

### Issue: "consult command not found"

**Symptoms:**
```
kimi: 'consult' is not a kimi command.
```

**Solutions:**
1. Verify Kimi CLI is installed: `kimi --version`
2. Check skills directory exists: `ls ~/.config/agents/skills/consultancy/`
3. Restart your terminal (sometimes needed for PATH updates)
4. Re-run INSTALL.bat

### Issue: "Skill loads but seems unresponsive"

**Symptoms:** Long pauses, no agent responses

**Solutions:**
1. Check your internet connection
2. Verify API key is set: `echo $KIMI_API_KEY` (or Windows equivalent)
3. Try a simpler prompt first
4. Check if you're in the correct working directory

### Issue: "Agents disagree on everything"

**Symptoms:** Constant back-and-forth, no progress

**Solutions:**
1. This is actually normal! Creative tension is by design
2. If it feels stuck, type: `aligner: summarize current position`
3. Be more specific in your requirements
4. Use `fast-track` to reduce deliberation time

---

## Your Next Steps

You've just experienced the basics. In the next chapter, we'll meet each agent in detail and learn how to work effectively with their distinct personalities.

But for now, take a moment to celebrate: **You're no longer an AI assistant user—you're a consultant.** 🎩

Go ahead, try another `consult` session. Maybe explore a different domain. Or use `explore` to brainstorm something you've been thinking about.

Your trio is ready whenever you are.

---

> 📚 **Key Takeaways:**
> - Install with `INSTALL.bat` (Windows) or manual copy (any OS)
> - Start with `kimi consult` for full workflow
> - Use `explore` for brainstorming, `fast-track` for speed
> - Watch the STATUS/ACTIVE/VERIFY/ALIGN dashboard
> - Every session creates a Change Request (CR) for traceability
