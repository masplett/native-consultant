# Section 4: The Six Phases — Your Journey from Idea to Delivery

Welcome to the heart of the consultancy workflow! This is where the magic happens — where your vague "wouldn't it be cool if..." idea transforms into a real, tangible solution. Think of these six phases as a well-choreographed dance between you and the AI trio. Each phase has a purpose, each role has their moment to shine, and together, they get you across the finish line.

Let's walk through the entire journey, phase by phase, so you know exactly what to expect and how to succeed at every gate.

---

## 🗺️ The Big Picture: ASCII Workflow Diagram

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                         CONSULTANCY WORKFLOW MAP                            │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│   ┌──────────┐    ┌──────────┐    ┌──────────┐    ┌──────────┐             │
│   │   YOU    │───→│  MAKER   │───→│VALIDATOR │───→│ ALIGNER  │             │
│   │ (Client) │    │ (Create) │    │ (Verify) │    │  (Check) │             │
│   └────┬─────┘    └────┬─────┘    └────┬─────┘    └────┬─────┘             │
│        │               │               │               │                   │
│        └───────────────┴───────────────┴───────────────┘                   │
│                          THE TRIO WORKS AS ONE                              │
│                                                                             │
│  ╔═══════════════════════════════════════════════════════════════════════╗ │
│  ║                         PHASE 1: DISCOVERY                            ║ │
│  ║  🎯 Goal: Extract your brain-contents and shape them into requirements ║ │
│  ║  👥 Active: All three roles (interview + synthesis)                   ║ │
│  ║  📄 Output: REQUIREMENTS.md                                           ║ │
│  ║  🚪 Gate: None — this is the foundation                               ║ │
│  ╚═══════════════════════════════════════════════════════════════════════╝ │
│                                    │                                        │
│                                    ▼                                        │
│  ╔═══════════════════════════════════════════════════════════════════════╗ │
│  ║                      PHASE 2: DESIGN REVIEW                           ║ │
│  ║  🎯 Goal: Plan the architecture and get your approval                 ║ │
│  ║  👥 Active: Maker (leads), Validator (checks feasibility)             ║ │
│  ║  📄 Output: DESIGN.md, Architecture decisions                         ║ │
│  ║  🚪 Gate: [A]pprove / [R]evise / [C]ancel                             ║ │
│  ╚═══════════════════════════════════════════════════════════════════════╝ │
│                                    │                                        │
│                     ┌──────────────┼──────────────┐                         │
│                     ▼              ▼              ▼                         │
│                   [A]pprove     [R]evise       [C]ancel                     │
│                     │              │              │                         │
│                     ▼              └──────┬───────┘                         │
│           Continue to Phase 3             │                                 │
│                                  Back to Design                             │
│                                                                             │
│  ╔═══════════════════════════════════════════════════════════════════════╗ │
│  ║                         PHASE 3: BUILD                                ║ │
│  ║  🎯 Goal: Make the thing! Code, create, construct                     ║ │
│  ║  👥 Active: Maker (primary), Aligner (progress checks)                ║ │
│  ║  📄 Output: Working deliverable, Build logs                           ║ │
│  ║  🚪 Gate: None — just keep building!                                  ║ │
│  ╚═══════════════════════════════════════════════════════════════════════╝ │
│                                    │                                        │
│                                    ▼                                        │
│  ╔═══════════════════════════════════════════════════════════════════════╗ │
│  ║                      PHASE 4: VALIDATION REVIEW                       ║ │
│  ║  🎯 Goal: Verify everything works and meets requirements              ║ │
│  ║  👥 Active: Validator (leads), Maker (fixes), Aligner (confirms fit)  ║ │
│  ║  📄 Output: VALIDATION_REPORT.md, Test results                        ║ │
│  ║  🚪 Gate: [P]ass / [F]ix / [F]ail                                     ║ │
│  ╚═══════════════════════════════════════════════════════════════════════╝ │
│                                    │                                        │
│                     ┌──────────────┼──────────────┐                         │
│                     ▼              ▼              ▼                         │
│                    [P]ass        [F]ix         [F]ail                       │
│                     │              │              │                         │
│                     ▼              ▼              │                         │
│             Continue to QA    Return to Build     │                         │
│                                                   ▼                         │
│                                            Escalate/Abort                   │
│                                                                             │
│  ╔═══════════════════════════════════════════════════════════════════════╗ │
│  ║                           PHASE 5: QA                                 ║ │
│  ║  🎯 Goal: Polish, document, and prepare for handoff                   ║ │
│  ║  👥 Active: All three roles (final quality sweep)                     ║ │
│  ║  📄 Output: QA_REPORT.md, Documentation, Final artifact               ║ │
│  ║  🚪 Gate: None — this is the home stretch                             ║ │
│  ╚═══════════════════════════════════════════════════════════════════════╝ │
│                                    │                                        │
│                                    ▼                                        │
│  ╔═══════════════════════════════════════════════════════════════════════╗ │
│  ║                        PHASE 6: DELIVERY                              ║ │
│  ║  🎯 Goal: Hand over the completed solution with everything needed     ║ │
│  ║  👥 Active: Maker (packages), Aligner (confirms client satisfaction)  ║ │
│  ║  📄 Output: DELIVERY_PACKAGE/, Final handoff                          ║ │
│  ║  🚪 Gate: None — but don't forget the lessons learned!                ║ │
│  ╚═══════════════════════════════════════════════════════════════════════╝ │
│                                                                             │
│                                    🎉                                       │
│                              PROJECT COMPLETE!                              │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

---

## 🔍 Phase 1: Discovery — "Tell Me Everything"

**What Happens:**

This is where we get to know each other. The consultancy system will ask you questions — sometimes a lot of questions — to understand what you're trying to build, why you need it, and what success looks like. Don't worry if your ideas are half-baked; that's literally what this phase is for!

Think of the Maker as your curious friend who keeps asking "But why?" and "What if?" The Validator is listening in, already thinking about edge cases and potential roadblocks. The Aligner is making sure we're not building a spaceship when you just needed a bicycle.

**Who Is Active:**

- **Maker (Lead):** Drives the conversation, asks probing questions, synthesizes your answers
- **Validator (Support):** Identifies risks, constraints, and feasibility concerns early
- **Aligner (Support):** Ensures we're solving the right problem, not just any problem

**What Output Is Produced:**

A beautiful, structured `REQUIREMENTS.md` file that captures:
- Project objectives and success criteria
- Functional requirements (what it should do)
- Non-functional requirements (how well it should do it)
- Constraints and assumptions
- Domain context and special considerations

**Example REQUIREMENTS.md Output:**

```markdown
# Project Requirements: Inventory Management Dashboard

## 📋 Overview
A web-based inventory dashboard for a small manufacturing business
to track parts, orders, and supplier relationships.

## 🎯 Objectives
- Reduce stockout incidents by 40%
- Automate reorder point notifications
- Provide real-time visibility into inventory levels

## ✅ Functional Requirements
1. **FR-001:** User can view current inventory by category
2. **FR-002:** System alerts when stock falls below reorder point
3. **FR-003:** Generate purchase order suggestions
4. **FR-004:** Export inventory reports to CSV/PDF

## 🔧 Non-Functional Requirements
- **NFR-001:** Page load time < 2 seconds
- **NFR-002:** Support up to 50 concurrent users
- **NFR-003:** 99.5% uptime during business hours

## ⚠️ Constraints
- Budget: $5,000 maximum
- Timeline: 6 weeks
- Must integrate with existing QuickBooks

## 🏭 Domain Context
Manufacturing domain active — Maker/Validator/Aligner roles adjusted
for production environment considerations.
```

**The Gate:**

There isn't one! Discovery flows naturally into Design Review once you confirm the requirements look right. But you CAN say "Wait, we missed something!" and we'll iterate.

**💡 Pro Tip:** The more detail you provide in Discovery, the smoother everything else goes. Don't hold back on context — what seems obvious to you might be crucial information for us!

**⚠️ Watch Out For:** Scope creep during discovery. It's easy to keep adding "oh, and also..." features. The Aligner will help keep things realistic, but stay focused on your core need.

---

## 🏗️ Phase 2: Design Review — "Let's Plan This Properly"

**What Happens:**

Now we put on our architect hats. The Maker creates a detailed design document showing HOW we'll build what you need. This includes technical architecture, data models, UI mockups (if applicable), and a build plan.

This is your chance to catch issues BEFORE we start building. Much cheaper to change a design than to refactor code!

**Who Is Active:**

- **Maker (Lead):** Creates the design, proposes architecture, explains trade-offs
- **Validator (Active):** Reviews for feasibility, identifies technical risks
- **Aligner (Support):** Confirms the design matches your actual needs

**What Output Is Produced:**

- `DESIGN.md` with architecture diagrams and decisions
- Component breakdown and tech stack selection
- Risk assessment and mitigation strategies
- Build phase breakdown (what happens when)

**Design Review Gate Example:**

```
╔════════════════════════════════════════════════════════════════╗
║                    🚪 DESIGN REVIEW GATE                       ║
╠════════════════════════════════════════════════════════════════╣
║                                                                ║
║  Maker presents:                                               ║
║  ┌─────────────────────────────────────────────────────────┐   ║
║  │ Architecture: React frontend + Node.js API + PostgreSQL │   ║
║  │ Estimated time: 4 weeks                                 │   ║
║  │ Key risk: QuickBooks integration complexity             │   ║
║  │ Mitigation: Use official SDK, 1-week buffer added       │   ║
║  └─────────────────────────────────────────────────────────┘   ║
║                                                                ║
║  Validator assessment:                                         ║
║  ✓ Architecture is sound                                       ║
║  ✓ Risk identification is accurate                             ║
║  ⚠️ Recommend testing QB integration in week 1                 ║
║                                                                ║
║  Your decision:                                                ║
║                                                                ║
║  [A]pprove → Proceed to Build phase                            ║
║  [R]evise → "Can we use MySQL instead of PostgreSQL?"          ║
║  [C]ancel → "This is too complex, let's simplify scope"        ║
║                                                                ║
╚════════════════════════════════════════════════════════════════╝
```

**The Gate [A]pprove/[R]evise/[C]ancel:**

- **A (Approve):** "Looks good, let's build it!" → Proceed to Phase 3
- **R (Revise):** "Almost, but change X, Y, Z" → Back to Maker for revisions
- **C (Cancel):** "This won't work / scope is wrong" → Re-evaluate approach

**💡 Pro Tip:** Ask questions during Design Review! "Why did you choose X over Y?" is always a fair question. Good designs have good reasons behind them.

**⚠️ Watch Out For:** Unnecessary complexity. If the design feels over-engineered for your needs, speak up. The best solution is the simplest one that works.

---

## 🔨 Phase 3: Build — "Making It Real"

**What Happens:**

This is where things get tangible. Code gets written, components get created, and your solution starts taking shape. The Maker is in their element here, cranking out the actual deliverable.

You'll get regular progress updates — no disappearing into a black box for weeks. The Aligner checks in periodically to make sure we're still on track and the build matches what you actually need.

**Who Is Active:**

- **Maker (Primary):** Writing code, creating assets, doing the actual building
- **Aligner (Active):** Progress checks, course corrections, scope validation
- **Validator (On standby):** Ready if questions arise, but mostly waiting for their moment in Phase 4

**What Output Is Produced:**

- Working code/files/artifacts
- Build logs and progress reports
- Incremental demos ("Here's what works so far...")
- Intermediate test results

**Build Progress Reporting Example:**

```
╔════════════════════════════════════════════════════════════════╗
║                 📊 BUILD PROGRESS UPDATE                       ║
║                    Day 12 of 20 (60% complete)                 ║
╠════════════════════════════════════════════════════════════════╣
║                                                                ║
║  ✅ COMPLETED:                                                 ║
║     • Database schema designed and implemented                 ║
║     • API endpoints for inventory CRUD operations              ║
║     • User authentication system                               ║
║     • Basic dashboard layout                                   ║
║                                                                ║
║  🔄 IN PROGRESS:                                               ║
║     • QuickBooks integration module (70% done)                 ║
║     • Alert/notification system                                ║
║                                                                ║
║  ⏳ PENDING:                                                   ║
║     • Report generation and export                             ║
║     • UI polish and responsive design                          ║
║     • Final integration testing                                ║
║                                                                ║
║  📝 NOTES:                                                     ║
║     • QB integration going smoother than expected!             ║
║     • May finish 1-2 days early                                ║
║                                                                ║
╚════════════════════════════════════════════════════════════════╝
```

**The Gate:**

No formal gate here — building continues until complete or until you request changes. If something feels off, say something! It's easier to adjust mid-build than at the end.

**💡 Pro Tip:** Trust the process but stay engaged. You don't need to micromanage, but checking in on progress updates helps catch misalignment early.

**⚠️ Watch Out For:** Mid-build scope changes. That "quick little addition" can cascade into significant delays. Save new ideas for Phase 6 or a future project.

---

## ✓ Phase 4: Validation Review — "Does It Actually Work?"

**What Happens:**

Time to get critical! The Validator takes the lead, putting the build through its paces. They'll test functionality, check against requirements, verify edge cases, and generally try to break things (in a good way).

If issues are found, the Maker fixes them. If the whole approach is flawed, we might need to revisit the design. But most of the time, it's just a few tweaks before we're good to go.

**Who Is Active:**

- **Validator (Lead):** Testing, verification, quality assessment
- **Maker (Active):** Fixing issues, explaining implementation
- **Aligner (Active):** Confirming the solution fits the original need

**What Output Is Produced:**

- `VALIDATION_REPORT.md` with test results
- List of issues found (if any) and their severity
- Evidence of compliance with requirements
- Recommendation for next steps

**Validation Gate Decision Tree:**

```
╔════════════════════════════════════════════════════════════════╗
║              🌳 VALIDATION GATE DECISION TREE                  ║
╠════════════════════════════════════════════════════════════════╣
║                                                                ║
║                    ┌─────────────────┐                         ║
║                    │  Validation     │                         ║
║                    │  Complete?      │                         ║
║                    └────────┬────────┘                         ║
║                             │                                  ║
║              ┌──────────────┼──────────────┐                   ║
║              ▼              ▼              ▼                   ║
║           Issues?      Minor Only      No Issues               ║
║              │              │              │                   ║
║              ▼              ▼              ▼                   ║
║        ┌─────────┐    ┌─────────┐    ┌─────────┐               ║
║        │ Critical │    │  Fix &  │    │  PASS   │               ║
║        │  Issues  │    │ Re-test │    │  GATE   │──→ Continue    ║
║        └────┬────┘    └────┬────┘    └─────────┘    to QA       ║
║             │              │                                   ║
║             ▼              ▼                                   ║
║        ┌─────────┐    ┌─────────┐                              ║
║        │  FAIL   │    │  PASS   │                              ║
║        │  GATE   │    │  GATE   │                              ║
║        └────┬────┘    └─────────┘                              ║
║             │                                                  ║
║             ▼                                                  ║
║    ┌─────────────────┐                                         ║
║    │  Can we fix     │                                         ║
║    │  with redesign? │                                         ║
║    └────────┬────────┘                                         ║
║             │                                                  ║
║    ┌────────┴────────┐                                         ║
║    ▼                 ▼                                         ║
║    YES              NO                                         ║
║     │               │                                          ║
║     ▼               ▼                                          ║
║ ┌─────────┐    ┌─────────┐                                     ║
║ │ Return  │    │ ABORT / │                                     ║
║ │to Design│    │Escalate │                                     ║
║ └─────────┘    └─────────┘                                     ║
║                                                                ║
╚════════════════════════════════════════════════════════════════╝
```

**The Gate [P]ass/[F]ix/[F]ail:**

- **P (Pass):** "All good, ship it!" → Proceed to Phase 5
- **F (Fix):** "Minor issues found" → Maker fixes, re-validate
- **F (Fail):** "Major problems" → Return to Design or escalate

**💡 Pro Tip:** Don't take validation findings personally. The Validator isn't being mean — they're making sure you get something reliable. Better to find issues now than after delivery!

**⚠️ Watch Out For:** "Validation fatigue" where minor issues keep cycling. If you're stuck in multiple fix loops, it might be a sign the design needs revisiting.

---

## 🔍 Phase 5: QA — "The Final Polish"

**What Happens:**

Almost there! QA is the quality sweep before we hand everything over. This includes documentation review, code cleanup, edge case handling, and making sure everything is packaged nicely.

Think of this as the difference between a working prototype and a production-ready solution. Both work, but one is much more maintainable!

**Who Is Active:**

- **All Three Roles (Collaborative):** Final quality sweep
- **Maker:** Documentation, cleanup, packaging
- **Validator:** Final verification, edge case testing
- **Aligner:** Confirming completeness and fit

**What Output Is Produced:**

- `QA_REPORT.md` with final quality assessment
- Complete documentation (usage guides, API docs, etc.)
- Clean, organized deliverable
- Handoff package ready for delivery

**The Gate:**

No formal gate — QA continues until everyone's satisfied. It's rare to discover major issues here, but if we do, they get fixed before delivery.

**💡 Pro Tip:** Pay attention to the documentation during this phase. Good docs are the difference between "I got this" and "Wait, how do I...?" six months later.

**⚠️ Watch Out For:** The temptation to skip QA to save time. Don't do it! QA catches the little things that make a big difference in user experience.

---

## 📦 Phase 6: Delivery — "Here's Your Solution!"

**What Happens:**

The moment of truth! We package everything up — the working solution, documentation, source files, and any setup instructions — and hand it over to you.

The Aligner makes sure you're actually satisfied (not just technically delivered), and we capture lessons learned for next time.

**Who Is Active:**

- **Maker (Lead):** Packages deliverables, creates handoff materials
- **Aligner (Active):** Confirms client satisfaction, captures feedback
- **Validator (Support):** Final sign-off, warranty notes

**What Output Is Produced:**

- `DELIVERY_PACKAGE/` directory with everything you need
- Setup/deployment instructions
- User documentation
- "What to do if something breaks" guide
- Lessons learned (for future improvements)

**The Gate:**

No formal gate — but your satisfaction is the real measure of success. If something's missing or unclear, speak up!

**💡 Pro Tip:** Test the delivery package immediately. Make sure you can actually use it without the Maker present. Good handoffs are self-contained.

**⚠️ Watch Out For:** Assuming you'll remember everything later. If documentation feels unclear during handoff, it will be REALLY unclear in three months. Fix it now!

---

## 🎯 Tips for Success Across All Phases

| Phase | Key Success Factor | Common Pitfall |
|-------|-------------------|----------------|
| Discovery | Be open and detailed | Holding back context |
| Design Review | Ask questions | Approving without understanding |
| Build | Trust but verify | Micromanaging or disappearing |
| Validation | Accept findings constructively | Arguing with the Validator |
| QA | Value documentation | Rushing to finish |
| Delivery | Test the handoff | Assuming it works |

---

**Next up:** Learn about the five different domains and how they shape the roles of Maker, Validator, and Aligner in [Section 5: Domains](./05-Domains.md)!
